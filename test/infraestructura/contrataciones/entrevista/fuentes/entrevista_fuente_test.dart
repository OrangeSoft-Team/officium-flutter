import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/infraestructura/contrataciones/entrevista/fuentes/entrevista_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/entrevista/modelos/detalle_propuesta_entrevista_empleado_dto.dart';

import '../../../data_pruebas/lector_json.dart';
import '../../../data_pruebas/test_data.dart';
import 'entrevista_fuente_test.mocks.dart';

const DIR_NEST = 'http://officium-nest.ddns.net:2000';

@GenerateMocks([HttpClient,HttpClientRequest,HttpClientResponse, HttpHeaders, Stream])
void main () {
  final MockHttpClient mockHttpClient =  MockHttpClient();
  final MockHttpClientRequest mockHttpClientRequest =  MockHttpClientRequest();
  final MockHttpHeaders mockHttpHeaders =  MockHttpHeaders();
  final MockStream mockStream =  MockStream();
  final MockHttpClientResponse mockHttpClientResponse =  MockHttpClientResponse();
  final EntrevistaFuente fuenteDeDatos = EntrevistaFuente(cliente: mockHttpClient);;

  void setUpMockHttpClientSuccess200(String? testData,int code) {
    when(mockHttpClientRequest.headers)
    .thenAnswer((_) => mockHttpHeaders);
    when(mockHttpClientRequest.close())
    .thenAnswer((_) async => mockHttpClientResponse);
    when(mockHttpClientResponse.statusCode)
    .thenAnswer((_)  => code);
    when(mockHttpClientResponse.transform(any))
    .thenAnswer((_) => Stream<String>.value((testData != null)? fixture(testData):'' ));
  }

  void setUpMockHttpClientFailure(int code) {
    when(mockHttpClientRequest.headers)
    .thenAnswer((_) => mockHttpHeaders);
    when(mockHttpClientRequest.close())
    .thenAnswer((_) async => mockHttpClientResponse);
    when(mockHttpClientResponse.statusCode)
    .thenAnswer((_)  => code);
  }
  group('EndPoint  PUT empleado/entrevista/:uuid_entrevista/aceptar ', () {
    
    test('Debe retornar UNIT(NULL) ante éxito con el servidor', () async { 
      final DetallePropuestaEntrevistaEmpleadoDTO tDetallePropuestaEntrevista = 
      DetallePropuestaEntrevistaEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().detalleEntrevistaEmpleado)) as Map<String,dynamic>);
      when(mockHttpClient.putUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientSuccess200(null, 200);
      final result = await fuenteDeDatos.confirmarPropuestaEntrevista(tDetallePropuestaEntrevista.uuid);

      verify(mockHttpClient.putUrl(Uri.parse('$DIR_NEST/api/empleado/entrevista/${tDetallePropuestaEntrevista.uuid}/aceptar')));
      expect(result, equals(unit));
    });
  });
  group('EndPoint  PUT empleado/entrevista/:uuid_entrevista/rechazar', () {
    test('Debe retornar UNIT(NULL) ante éxito con el servidor', () async { 
      final DetallePropuestaEntrevistaEmpleadoDTO tDetallePropuestaEntrevista = 
      DetallePropuestaEntrevistaEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().detalleEntrevistaEmpleado)) as Map<String,dynamic>);
      when(mockHttpClient.putUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
      setUpMockHttpClientSuccess200(null, 200);
      final result = await fuenteDeDatos.rechazarPropuestaEntrevista(tDetallePropuestaEntrevista.uuid);
      verify(mockHttpClient.putUrl(Uri.parse('$DIR_NEST/api/empleado/entrevista/${tDetallePropuestaEntrevista.uuid}/rechazar')));
      expect(result, equals(unit));
    });
  });
  
  group('EndPoint  GET mpleado/entrevista/:uuid_entrevista ', () {
    test('Debe retornar detalle de entrevista ante éxito con el servidor', () async {    
      final DetallePropuestaEntrevistaEmpleadoDTO tDetallePropuestaEntrevista = 
      DetallePropuestaEntrevistaEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().detalleEntrevistaEmpleado)) as Map<String,dynamic>);
      
      when(mockHttpClient.getUrl(any))
      .thenAnswer((_) async => mockHttpClientRequest);  
      setUpMockHttpClientSuccess200(TestData().detalleEntrevistaEmpleado,200);
      
      final result = await fuenteDeDatos.obtenerDetallePropuestaEntrevista(tDetallePropuestaEntrevista.uuid);
      verify(mockHttpClient.getUrl(
        Uri.parse('$DIR_NEST/api/empleado/entrevista/${tDetallePropuestaEntrevista.uuid}'),
      ));

      expect(result, equals(tDetallePropuestaEntrevista));
    });
  });
}