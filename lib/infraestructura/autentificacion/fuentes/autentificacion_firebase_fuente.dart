import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/autentificacion/excepciones_dominio/autentificacion_excepciones.dart';
import 'package:officium_flutter/dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart';
import 'package:officium_flutter/dominio/autentificacion/value_objecs/email.dart';
import 'package:officium_flutter/dominio/autentificacion/value_objecs/password.dart';
import 'package:officium_flutter/dominio/core/entidades/empleado.dart';
import 'package:officium_flutter/infraestructura/autentificacion/fuentes/i_autentificacion_firebase_fuente.dart';
import 'package:officium_flutter/infraestructura/autentificacion/modelos/datos_inicio_sesion_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/autentificacion/modelos/respuesta_inicio_sesion_empelado_dto.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/comun/local_storage/fuentes/fuente_local.dart';
import 'package:officium_flutter/infraestructura/comun/response_parser.dart';

const DIR_NEST = 'https://officium-nest.herokuapp.com';

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
      await firebaseAuth.createUserWithEmailAndPassword(
          email: emailString, password: passwordString);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const ExcepcionAutentificacion.emailEnUso());
      } else {
        return left(const ExcepcionAutentificacion.serverError());
      }
    }
  }

  @override
  Future<Either<ExcepcionAutentificacion, Unit>> loginConEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    try {
      final firebaseResponse = await firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress.getOrCrash(), password: password.getOrCrash());
      final AuthCredential? userCredential = firebaseResponse.credential;
      final userUid = firebaseResponse.user?.uid;
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
        // final body = apiResponse.body.toString();
        // final jwtCookie = apiResponse.headers['set-cookie'];
        //Map cookies = {};
        //Cookie.fromSetCookieValue(value)
        return right(unit);
      } else {
        return left(const ExcepcionAutentificacion.serverError());
        throw ServerException();
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
