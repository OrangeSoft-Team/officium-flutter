import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:officium_flutter/dominio/autentificacion/excepciones_dominio/autentificacion_excepciones.dart';
import 'package:officium_flutter/dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart';
import 'package:officium_flutter/dominio/autentificacion/value_objecs/email.dart';
import 'package:officium_flutter/dominio/autentificacion/value_objecs/password.dart';
import 'package:officium_flutter/dominio/comun/value_objects/genero.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/core/entidades/empleado.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/codigo_postal.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/direccion_calle.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/fecha_nacimiento.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/nivel_educativo.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/numero_telefonico.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/primer_apellido.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/primer_nombre.dart';
import 'package:officium_flutter/infraestructura/autentificacion/modelos/datos_inicio_sesion_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/autentificacion/modelos/datos_registro_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/comun/local_storage/fuentes/fuente_local.dart';
import 'package:officium_flutter/infraestructura/comun/response_parser.dart';

const DIR_NEST = 'https://officium-nest.herokuapp.com';
final formatoFecha = DateFormat("dd/MM/yyyy");

@LazySingleton(as: IAutentificacionFachada)
class FirebaseAuthFuente implements IAutentificacionFachada {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final FuenteLocal fuenteLocal;
  final HttpClient cliente;

  FirebaseAuthFuente(
      {required this.cliente,
      required this.firebaseAuth,
      required this.googleSignIn,
      required this.fuenteLocal});

  @override
  Future<Unit> signOut() async {
    try {
      firebaseAuth.signOut();
      googleSignIn.signOut();
      return unit;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<Either<ExcepcionAutentificacion, Unit>> registarConDatosBasicos(
      {required Empleado empleado,
      required EmailAddress emailAddress,
      required Password password}) async {
    final String emailString = emailAddress.getOrCrash();
    final String passwordString = password.getOrCrash();
    try {
      final response = await firebaseAuth.createUserWithEmailAndPassword(
          email: emailString, password: passwordString);
      final datosRegistro = DatosRegistroEmpleadoDTO(
          correoElectronico: emailString,
          token: response.user!.uid,
          primerNombre: empleado.primerNombre.getOrCrash(),
          primerApellido: empleado.primerApellido.getOrCrash(),
          segundoNombre: empleado.segundoNombre?.getOrCrash(),
          segundoApellido: empleado.segundoApellido?.getOrCrash(),
          genero: empleado.genero.getOrCrash().toUpperCase(),
          nivelEducativo: empleado.nivelEducativo.getOrCrash(),
          numeroTelefonico: empleado.numeroTelefonico.getOrCrash(),
          fechaNacimiento:
              formatoFecha.format(empleado.fechaNacimiento.getOrCrash()),
          // fechaNacimiento: formatoFecha
          //     .parse(empleado.fechaNacimiento.getOrCrash().toString())
          //     .toString(),
          codigoPostal: empleado.codigoPostal.getOrCrash(),
          calleUno: empleado.direccionCalleUno.getOrCrash(),
          uuidPais: "9d661655-4526-4f57-afc6-4464e5a71e75",
          uuidEstado: "dcf3d05b-a4b6-44a9-811a-103c078495a8",
          uuidCiudad: "a02cdc9b-8632-4540-aa96-d95d3ef53dba");
      final command =
          await cliente.postUrl(Uri.parse('$DIR_NEST/api/empleado/registrar'));
      command.headers.add(
          HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
      command.write(jsonEncode(datosRegistro));
      final apiResponse = await command.close();
      if (apiResponse.statusCode == 201) {
        return right(unit);
      } else {
        return left(const ExcepcionAutentificacion.serverError());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const ExcepcionAutentificacion.emailEnUso());
      } else {
        return left(const ExcepcionAutentificacion.serverError());
      }
    }
  }

  @override
  Future<Either<ExcepcionAutentificacion, Empleado>> loginConEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    try {
      final firebaseResponse = await firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress.getOrCrash(), password: password.getOrCrash());
      final AuthCredential? userCredential = firebaseResponse.credential;
      final String? userUid = firebaseResponse.user?.uid;
      final datosInicioSesion = DatosInicioSesionEmpleadoDTO(
          correoElectronico: emailAddress.getOrCrash(),
          // token: userCredential?.token.toString() ?? ''
          token: userUid ?? '');
      //  (userCredential!.token != null)
      //     ? userCredential.token.toString()
      //     : '');
      final request =
          await cliente.postUrl(Uri.parse('$DIR_NEST/api/empleado/auth'));
      request.headers.add(
          HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
      request.write(jsonEncode(datosInicioSesion));
      final apiResponse = await request.close();
      //COOKIE CHECK ?
      if (apiResponse.statusCode == 200) {
        final parsedData = await ResponseParser.parseResponse(apiResponse);

        final jsonResponse = jsonDecode(parsedData);
        // final body = apiResponse.body.toString();
        // final jwtCookie = apiResponse.headers['set-cookie'];
        //Map cookies = {};
        //Cookie.fromSetCookieValue(value)
        Empleado emp = Empleado(
          uuid: Identificador.fromUniqueString(firebaseResponse.user!.uid),
          primerNombre: PrimerNombre(jsonResponse['primerNombre'].toString()),
          primerApellido:
              PrimerApellido(jsonResponse['primerApellido'].toString()),
          genero: Genero('masculino'),
          nivelEducativo: NivelEducativo('NINGUNO'),
          numeroTelefonico: NumeroTelefonico('581010101010'),
          fechaNacimiento: FechaNacimiento(
              DateTime.now().subtract(const Duration(days: 20 * 365))),
          codigoPostal: CodigoPostal('1010'),
          direccionCalleUno: DireccionCalle('aasa'),
          statusEmpleado: true,
          uuidPais: Identificador.fromUniqueString(
              "9d661655-4526-4f57-afc6-4464e5a71e75"),
          uuidEstado: Identificador.fromUniqueString(
              "dcf3d05b-a4b6-44a9-811a-103c078495a8"),
          uuidCiudad: Identificador.fromUniqueString(
              "a02cdc9b-8632-4540-aa96-d95d3ef53dba"),
        );
        final responseCookies = apiResponse.cookies;
        if (responseCookies.isEmpty) {
          throw ServerException();
        }
        await fuenteLocal.asignarTokenLocal(responseCookies[0]);
        // final body = apiResponse.();

        return right(emp);
      } else {
        return left(const ExcepcionAutentificacion.serverError());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const ExcepcionAutentificacion.emailYPasswordInvalidas());
      } else {
        return left(const ExcepcionAutentificacion.serverError());
      }

      rethrow;
    }
  }

  @override
  Future<Either<ExcepcionAutentificacion, Unit>> loginGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return left(const ExcepcionAutentificacion.canceladoPorUsuario());
        return throw PlatformException(code: 'USER_CANCELLED');
      }
      final GoogleSignInAuthentication googleAuthentication =
          await googleUser.authentication;
      final OAuthCredential userCredential = GoogleAuthProvider.credential(
          accessToken: googleAuthentication.accessToken,
          idToken: googleAuthentication.idToken);
      final UserCredential firebaseResponse =
          await firebaseAuth.signInWithCredential(userCredential);

      if (firebaseResponse.user?.email != null &&
          firebaseResponse.credential?.token != null) {
        final datosInicioSesion = DatosInicioSesionEmpleadoDTO(
            correoElectronico: (firebaseResponse.user!.email != null)
                ? firebaseResponse.user!.email.toString()
                : '',
            token: (firebaseResponse.credential!.token != null)
                ? firebaseResponse.credential!.token.toString()
                : '');
        final request =
            await cliente.postUrl(Uri.parse('$DIR_NEST/api/empleado/auth'));
        request.headers.add(
            HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
        request.write(jsonEncode(datosInicioSesion));
        final apiResponse = await request.close();
        //COOKIE CHECK ?
        if (apiResponse.statusCode == 200) {
          final parsedData = await ResponseParser.parseResponse(apiResponse);
          final responseCookies = apiResponse.cookies;
          if (responseCookies.isEmpty) {
            return left(const ExcepcionAutentificacion.serverError());
            throw ServerException();
          }
          await fuenteLocal.asignarTokenLocal(responseCookies[0]);
          return right(unit);
          // return RespuestaInicioSesionEmpleadoDTO.fromJson(
          //     jsonDecode(parsedData) as Map<String, dynamic>);
        } else {
          return left(const ExcepcionAutentificacion.serverError());
          // throw ServerException();
        }
      } else {
        throw PlatformException(code: 'USER_NOT_LOGGED');
      }
    } on PlatformException catch (e) {
      rethrow;
    } on ServerException catch (e) {
      rethrow;
    }
  }

  @override
  Future<Option<Empleado>> getUsuarioLogueado() {
    // TODO: implement getUsuarioLogueado
    throw UnimplementedError();
  }

  /*@override
  Future<Unit> registrarUsuario() {
    // TODO: implement registrarUsuario
    throw UnimplementedError();
  }

  @override
  Future<Unit> registrarUsuarioConGoogle() {
    // TODO: implement registrarUsuarioConGoogle
    throw UnimplementedError();
  }*/
}
