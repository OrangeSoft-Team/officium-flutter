import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/mooc/certificados/fuentes/certificado_fuente.dart';
import 'package:officium_flutter/infraestructura/mooc/certificados/modelos/certificado_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/certificados/modelos/certificado_lista_dto.dart';

import '../../../data_pruebas/lector_json.dart';
import '../../../data_pruebas/test_data.dart';
import 'certificado_fuente_test.mocks.dart';

const DIR_NEST = 'http://officium-nest.ddns.net:2000';
@GenerateMocks([HttpClient,HttpClientRequest,HttpClientResponse, HttpHeaders])
void main ()  {
  final MockHttpClient mockHttpClient =  MockHttpClient();
  final MockHttpClientRequest mockHttpClientRequest =  MockHttpClientRequest();
  final MockHttpHeaders mockHttpHeaders =  MockHttpHeaders();
  final MockHttpClientResponse mockHttpClientResponse =  MockHttpClientResponse();
  final CertificadoFuente fuenteDeDatos = CertificadoFuente(cliente: mockHttpClient);
  
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
  group('EndPoint  GET empleado/certificado/', () {
    
    test('Debe retornar experiencias laborales del empleado ante éxito con el servidor', () async { 
      final List<CertificadoListaDTO> tCertificadosEmpleadoDto = <CertificadoListaDTO>[];
      final List<Map<String, dynamic>> dataJson = List<Map<String, dynamic>>.from(jsonDecode(fixture(TestData().certificadosEmpleado)) as List);
      for(final dto in dataJson){
        tCertificadosEmpleadoDto.add(CertificadoListaDTO.fromJson(dto));
      }
      when(mockHttpClient.getUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
      setUpMockHttpClientSuccess200(TestData().certificadosEmpleado, 200);
      final result = await fuenteDeDatos.obtenerCertificadosEmpleado();
      verify(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/certificado/')));
      expect(result, equals(tCertificadosEmpleadoDto));
    });

    test(': Debe retornar código de error 500 ante fallo del servidor', () {
      when(mockHttpClient.getUrl(any))
      .thenAnswer((_) async => mockHttpClientRequest);
      setUpMockHttpClientFailure(500);
      final call = fuenteDeDatos.obtenerCertificadosEmpleado;
      verifyNever(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/certificado/')));
      expect(() async => call(),throwsA(const TypeMatcher<ServerException>()));
    });
  });
  
  group('EndPoint GET empleado/certificado/:uuid_certificado ', () {
    test('Debe retornar detalle del certificado del empleado ante éxito con el servidor', () async { 
    final CertificadoDTO tCertificadoEmpleadoDto = CertificadoDTO.fromJson(jsonDecode(fixture(TestData().certificadoEmpleado)) as Map<String,dynamic>);
      when(mockHttpClient.getUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
      setUpMockHttpClientSuccess200(TestData().certificadoEmpleado, 200);
      final result = await fuenteDeDatos.obtenerDetalleCertificado(tCertificadoEmpleadoDto.uuid);
      verify(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/certificado/${tCertificadoEmpleadoDto.uuid}')));
      expect(result, equals(tCertificadoEmpleadoDto));  
    });
  });
}