import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/infraestructura/autentificacion/fuentes/i_autentificacion_firebase_fuente.dart';
import 'package:officium_flutter/infraestructura/autentificacion/modelos/datos_inicio_sesion_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/autentificacion/modelos/respuesta_inicio_sesion_empelado_dto.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/comun/response_parser.dart';

const DIR_NEST = 'http://officium-nest.ddns.net:2000';

@LazySingleton(as: IAuthFirebaseFuente)
class FirebaseAuthFuente implements IAuthFirebaseFuente {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final HttpClient cliente;
  
  FirebaseAuthFuente({
    required this.cliente,
    required this.firebaseAuth,
    required this.googleSignIn
  });

  @override
  Future<Unit> cerrarSesion() async  {
    try {
      firebaseAuth.signOut();
      return unit;
    }
    catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<RespuestaInicioSesionEmpleadoDTO> ingresarConCorreoClave(String email, String password) async {
      try{
      final firebaseResponse = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      final AuthCredential? userCredential = firebaseResponse.credential;
      final datosInicioSesion = DatosInicioSesionEmpleadoDTO(correoElectronico: email, 
      token: (userCredential!.token != null)? userCredential.token.toString():'');
      final request = await cliente.postUrl(Uri.parse('$DIR_NEST/api/empleado/auth'));
      request.headers.add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
      request.write(jsonEncode(datosInicioSesion));
      final apiResponse = await request.close();
      //COOKIE CHECK ?
      if(apiResponse.statusCode == 200){
        final parsedData = await ResponseParser.parseResponse(apiResponse);
        return RespuestaInicioSesionEmpleadoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
      }
      else {
        throw ServerException();
        }
      }
      on FirebaseAuthException {
        rethrow;
      }
  }

  @override
  Future<RespuestaInicioSesionEmpleadoDTO> ingresarConGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        throw PlatformException(code:'USER_CANCELED');
      }
      final GoogleSignInAuthentication googleAuthentication = await googleUser.authentication;
      final OAuthCredential userCredential = GoogleAuthProvider.credential(accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken);
      final UserCredential firebaseResponse = await firebaseAuth.signInWithCredential(userCredential);
      
      if(firebaseResponse.user?.email != null && firebaseResponse.credential?.token != null ){
        final datosInicioSesion = DatosInicioSesionEmpleadoDTO(
        correoElectronico: (firebaseResponse.user!.email != null)? firebaseResponse.user!.email.toString():'', 
        token: (firebaseResponse.credential!.token != null)? firebaseResponse.credential!.token.toString():''
        );
        final request = await cliente.postUrl(Uri.parse('$DIR_NEST/api/empleado/auth'));
        request.headers.add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
        request.write(jsonEncode(datosInicioSesion));
        final apiResponse = await request.close();
        //COOKIE CHECK ?
        if (apiResponse.statusCode == 200) {
          final parsedData = await ResponseParser.parseResponse(apiResponse);
          return RespuestaInicioSesionEmpleadoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
        }
        else {
          throw ServerException();
        }
      }
      else {
        throw PlatformException(code:'USER_NOT_LOGGED');
      }
    } on PlatformException catch(e) {
      rethrow;
    }
    on ServerException catch(e) {
      rethrow;
    }
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