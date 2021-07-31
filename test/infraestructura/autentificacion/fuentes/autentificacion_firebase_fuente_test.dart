import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/infraestructura/autentificacion/fuentes/autentificacion_firebase_fuente.dart';
import 'package:officium_flutter/infraestructura/autentificacion/modelos/datos_inicio_sesion_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/autentificacion/modelos/respuesta_inicio_sesion_empelado_dto.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/comun/local_storage/fuentes/fuente_local.dart';

import '../../data_pruebas/lector_json.dart';
import '../../data_pruebas/test_data.dart';
import 'autentificacion_firebase_fuente_test.mocks.dart';

const DIR_NEST = 'http://officium-nest.ddns.net:2000';
@GenerateMocks([HttpClient,HttpClientRequest,HttpClientResponse, HttpHeaders, FirebaseAuth,UserCredential, AuthCredential,GoogleSignIn, GoogleSignInAccount, GoogleSignInAuthentication,User, FuenteLocal])
void main () {
  final MockHttpClient mockHttpClient =  MockHttpClient();
  final MockHttpClientRequest mockHttpClientRequest =  MockHttpClientRequest();
  final MockHttpHeaders mockHttpHeaders =  MockHttpHeaders();
  final MockHttpHeaders mockHttpHeadersResp =  MockHttpHeaders();
  final MockHttpClientResponse mockHttpClientResponse =  MockHttpClientResponse();
  final MockFirebaseAuth mockFirebaseAuth =  MockFirebaseAuth();
  final MockGoogleSignIn mockGoogleSignIn =  MockGoogleSignIn();
  final MockGoogleSignInAccount mockGoogleSignInAccount =  MockGoogleSignInAccount();
  final MockGoogleSignInAuthentication mockGoogleSignInAuthentication =  MockGoogleSignInAuthentication();
  final MockUser mockUser =  MockUser();
  final MockFuenteLocal mockFuenteLocal =  MockFuenteLocal();
  final FirebaseAuthFuente fuenteDeDatos = FirebaseAuthFuente(cliente: mockHttpClient,firebaseAuth:mockFirebaseAuth,googleSignIn: mockGoogleSignIn,fuenteLocal: mockFuenteLocal);
  final MockUserCredential mockUserCredential =  MockUserCredential();
  final MockAuthCredential mockAuthCredential =  MockAuthCredential();
  
  void setUpMockHttpClientSuccess200(String? testData,int code) {
    
    when(mockHttpClientRequest.headers)
    .thenAnswer((_) => mockHttpHeaders);

    when(mockHttpClientResponse.headers)
    .thenAnswer((_) => mockHttpHeadersResp);

    when(mockHttpClientResponse.cookies)
    .thenAnswer((_) => [Cookie('token','1'),Cookie('token','2')]);

    when(mockHttpHeadersResp['set-cookie'])
    .thenAnswer((_) => ['token="1"']);
    
    when(mockHttpClientRequest.close())
    .thenAnswer((_) async => mockHttpClientResponse);
    
    when(mockHttpClientResponse.statusCode)
    .thenAnswer((_)  => code);
    
    when(mockHttpClientResponse.transform(any))
    .thenAnswer((_) => Stream<String>.value((testData != null)? fixture(testData):'' ));
  }

  void firebaseSetup() {
     when(mockUserCredential.credential)
    .thenAnswer((_)  => mockAuthCredential);
     when(mockAuthCredential.token)
    .thenAnswer((_)  => 1234);
  }
  void googleSignInSuccesfulSetup() {
    when(mockGoogleSignIn.signIn())
    .thenAnswer((_) async => mockGoogleSignInAccount);
    when(mockGoogleSignInAccount.authentication)
    .thenAnswer((_) async => mockGoogleSignInAuthentication);
    when(mockGoogleSignInAuthentication.accessToken)
    .thenAnswer((_) => '1234');
    when(mockGoogleSignInAuthentication.idToken)
    .thenAnswer((_) => '1');
    when(mockUserCredential.user)
    .thenAnswer((_) => mockUser);
    when(mockUser.email)
    .thenAnswer((_) => 'usuario@gmail.com');
    when(mockUserCredential.credential)
    .thenAnswer((_) => mockAuthCredential);
    when(mockAuthCredential.token)
    .thenAnswer((_)  => 1234);
  }

  void setUpMockHttpClientFailure(int code) {
    
    when(mockHttpClientRequest.headers)
    .thenAnswer((_) => mockHttpHeaders);
    
    when(mockHttpClientRequest.close())
    .thenAnswer((_) async => mockHttpClientResponse);
    
    when(mockHttpClientResponse.statusCode)
    .thenAnswer((_)  => code);
  }
  
  group('Inicio sesion tradicional + EndPoint  GET empleado/auth ', () {
    final RespuestaInicioSesionEmpleadoDTO tRespuestaInicioSesionDto = RespuestaInicioSesionEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().repuestaInicioSesionEmpleado)) as Map<String,dynamic>);
    final DatosInicioSesionEmpleadoDTO tDatosInicioSesionDto = DatosInicioSesionEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().datosInicioSesionEmpleado)) as Map<String,dynamic>);
    test('Debe retornar respuesta de inicio de sesión ante éxito con el servidor', () async { 
      when(mockHttpClient.postUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
      when(mockFirebaseAuth.signInWithEmailAndPassword(email:anyNamed('email'),password:anyNamed('password')))
        .thenAnswer((_) async => mockUserCredential);
      setUpMockHttpClientSuccess200(TestData().repuestaInicioSesionEmpleado, 200);
      firebaseSetup();

      final result = await fuenteDeDatos.ingresarConCorreoClave(tDatosInicioSesionDto.correoElectronico,'1234');
      verify(mockHttpClient.postUrl(Uri.parse('$DIR_NEST/api/empleado/auth')));
      expect(result, equals(tRespuestaInicioSesionDto));
    });

    test(': Debe retornar código de error 500 ante fallo del servidor', () {
      when(mockHttpClient.postUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
      when(mockFirebaseAuth.signInWithEmailAndPassword(email:anyNamed('email'),password:anyNamed('password')))
        .thenAnswer((_) async => mockUserCredential);

      setUpMockHttpClientFailure(500);
      firebaseSetup();

      final call = fuenteDeDatos.ingresarConCorreoClave;
      
      verifyNever(mockHttpClient.postUrl(Uri.parse('$DIR_NEST/api/empleado/auth')));
      
      expect(() async => call(tDatosInicioSesionDto.correoElectronico,'1234'),throwsA(const TypeMatcher<ServerException>()));
    });

    test(': Debe retornar excepcion tipo FirebaseAuthException ante error de plataforma', () {
      when(mockFirebaseAuth.signInWithEmailAndPassword(
              email: anyNamed('email'), password: anyNamed('password')))
          .thenAnswer((_) async => throw FirebaseAuthException(code:'ERROR_USER_NOT_FOUND'));
      final call = fuenteDeDatos.ingresarConCorreoClave;
      expect(() async => call(tDatosInicioSesionDto.correoElectronico,'1234'),throwsA(const TypeMatcher<FirebaseAuthException>()));
    });
  });
  group('Inicio sesion googleSign + EndPoint  GET empleado/auth ', () {
    test('Debe retornar respuesta de inicio de sesión ante éxito con el servidor', () async {
      final RespuestaInicioSesionEmpleadoDTO tRespuestaInicioSesionDto = RespuestaInicioSesionEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().repuestaInicioSesionEmpleado)) as Map<String,dynamic>);
      when(mockHttpClient.postUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
      when(mockFirebaseAuth.signInWithCredential(any))
        .thenAnswer((_) async => mockUserCredential);
      when(mockFuenteLocal.asignarTokenLocal(any))
        .thenAnswer((_) async => unit);
      when(mockFuenteLocal.obtenerTokenLocal())
        .thenAnswer((_) async => '1234');
      googleSignInSuccesfulSetup();
      setUpMockHttpClientSuccess200(TestData().repuestaInicioSesionEmpleado, 200);
      final result = await fuenteDeDatos.ingresarConGoogle();
      verify(mockHttpClient.postUrl(Uri.parse('$DIR_NEST/api/empleado/auth')));
      expect(result, equals(tRespuestaInicioSesionDto));
    });
    test(': Debe retornar excepcion tipo PlatformException ante error de plataforma', () {
    when(mockGoogleSignIn.signIn())
    .thenAnswer((_) async => null);
      final call = fuenteDeDatos.ingresarConGoogle;
      expect(() async => call(),throwsA(const TypeMatcher<PlatformException>()));
    });
  });
}