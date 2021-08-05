import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/core/empleado/fuentes/empleado_fuente.dart';
import 'package:officium_flutter/infraestructura/core/empleado/modelos/actualizar_habilidades_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/empleado/modelos/datos_basicos_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/empleado/modelos/habilidades_empleado_dto.dart';

import '../../../data_pruebas/lector_json.dart';
import '../../../data_pruebas/test_data.dart';
import 'empleado_fuente_test.mocks.dart';

const DIR_NEST = 'http://officium-nest.ddns.net:2000';
@GenerateMocks([HttpClient,HttpClientRequest,HttpClientResponse, HttpHeaders])
void main () {
  final MockHttpClient mockHttpClient =  MockHttpClient();
  final MockHttpClientRequest mockHttpClientRequest =  MockHttpClientRequest();
  final MockHttpHeaders mockHttpHeaders =  MockHttpHeaders();
  final MockHttpClientResponse mockHttpClientResponse =  MockHttpClientResponse();
  final EmpleadoFuente fuenteDeDatos = EmpleadoFuente(cliente: mockHttpClient);

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
  group('EndPoint  GET empleado/perfil ', () {
    
    test('Debe retornar perfil del empleado ante éxito con el servidor', () async { 
    final DatosBasicosEmpleadoDTO tDatosBasicosEmpleadoDto = DatosBasicosEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().datosBasicosEmpleado)) as Map<String,dynamic>);

      when(mockHttpClient.getUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientSuccess200(TestData().datosBasicosEmpleado, 200);

      final result = await fuenteDeDatos.obtenerDatosBasicosEmpleado('1');

      verify(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/perfil')));

      expect(result, equals(tDatosBasicosEmpleadoDto));  
    });

    test(': Debe retornar código de error 500 ante fallo del servidor', () {
      when(mockHttpClient.getUrl(any))
      .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientFailure(500);
      
      final call = fuenteDeDatos.obtenerDatosBasicosEmpleado;
      
      verifyNever(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/perfil')));
      
      expect(() async => call('1'),throwsA(const TypeMatcher<ServerException>()));
    });
  });

  group('EndPoint  GET empleado/habilidades ', () {
    test('Debe retornar habilidades del empleado ante éxito con el servidor', () async { 
    final HabilidadesEmpleadoDTO tHabilidadesEmpleadoDto = HabilidadesEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().habilidadesEmpleado)) as Map<String,dynamic>);

      when(mockHttpClient.getUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientSuccess200(TestData().habilidadesEmpleado, 200);

      final result = await fuenteDeDatos.obtenerHabilidadesEmpleado('1');

      verify(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/habilidades')));

      expect(result, equals(tHabilidadesEmpleadoDto));  
    });
  });

  group('EndPoint  PUT empleado/habilidades ', () {
    test('Debe retornar nueva lista de habilidades del empleado ante éxito con el servidor', () async { 
    final ActualizarHabilidadesEmpleadoDTO tActualizarHabilidadesEmpleadoDto = ActualizarHabilidadesEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().habilidadesEmpleadoActualizadas)) as Map<String,dynamic>);
     final HabilidadesEmpleadoDTO tHabilidadesEmpleadoActualizadasDto = HabilidadesEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().habilidadesEmpleadoActualizadas)) as Map<String,dynamic>);
      when(mockHttpClient.putUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientSuccess200(TestData().habilidadesEmpleadoActualizadas, 200);

      final result = await fuenteDeDatos.actualizarHabilidadesEmpleado(tActualizarHabilidadesEmpleadoDto);

      verify(mockHttpClient.putUrl(Uri.parse('$DIR_NEST/api/empleado/habilidades')));

      expect(result, equals(tHabilidadesEmpleadoActualizadasDto));  
    });
  });
}