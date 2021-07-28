import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/fuentes/experiencia_laboral_fuente.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/modelos/actualizar_experiencia_laboral_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/modelos/crear_experiencia_laboral_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/modelos/experiencia_laboral_empleado_dto.dart';

import '../../../data_pruebas/lector_json.dart';
import '../../../data_pruebas/test_data.dart';
import 'experiencia_laboral_fuente_test.mocks.dart';

const DIR_NEST = 'http://officium-nest.ddns.net:2000';
@GenerateMocks([HttpClient,HttpClientRequest,HttpClientResponse, HttpHeaders])
void main () {
  final MockHttpClient mockHttpClient =  MockHttpClient();
  final MockHttpClientRequest mockHttpClientRequest =  MockHttpClientRequest();
  final MockHttpHeaders mockHttpHeaders =  MockHttpHeaders();
  final MockHttpClientResponse mockHttpClientResponse =  MockHttpClientResponse();
  final ExperienciaLaboralFuente fuenteDeDatos = ExperienciaLaboralFuente(cliente: mockHttpClient);

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
  group('EndPoint  GET empleado/experiencias_laborales/', () {
    
    test('Debe retornar experiencias laborales del empleado ante éxito con el servidor', () async { 
      final List<ExperienciaLaboralEmpleadoDTO> tExperienciasLaboLaboralesEmpleadoDto = <ExperienciaLaboralEmpleadoDTO>[];
      final List<Map<String, dynamic>> dataJson = List<Map<String, dynamic>>.from(jsonDecode(fixture(TestData().experienciasLaboralesEmpleado)) as List);

      for(final dto in dataJson){
        tExperienciasLaboLaboralesEmpleadoDto.add(ExperienciaLaboralEmpleadoDTO.fromJson(dto));
      }

      when(mockHttpClient.getUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientSuccess200(TestData().experienciasLaboralesEmpleado, 200);

      final result = await fuenteDeDatos.obtenerExperienciasLaborales('1');

      verify(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/experiencias_laborales/')));

      expect(result, equals(tExperienciasLaboLaboralesEmpleadoDto));
    });

    test(': Debe retornar código de error 500 ante fallo del servidor', () {
      when(mockHttpClient.getUrl(any))
      .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientFailure(500);
      
      final call = fuenteDeDatos.obtenerExperienciasLaborales;
      
      verifyNever(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/experiencias_laborales/')));
      
      expect(() async => call('1'),throwsA(const TypeMatcher<ServerException>()));
    });
  });
  
  group('EndPoint  POST empleado/experiencias_laborales/ ', () {
    test('Debe retornar nueva experiencia laboral del empleado ante éxito con el servidor', () async { 
    final CrearExperienciaLaboralEmpleadoDTO tNuevaExperienciaLaboralEmpleadoDto = CrearExperienciaLaboralEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().crearExperienciaLaboralesEmpleado)) as Map<String,dynamic>);
    final ExperienciaLaboralEmpleadoDTO tExperienciaLaboralEmpleadoDtoGenerada = ExperienciaLaboralEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().experienciaLaboralEmpleado)) as Map<String,dynamic>);

      when(mockHttpClient.postUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientSuccess200(TestData().experienciaLaboralEmpleado, 200);

      final result = await fuenteDeDatos.crearExperienciaLaboral(tNuevaExperienciaLaboralEmpleadoDto);

      verify(mockHttpClient.postUrl(Uri.parse('$DIR_NEST/api/empleado/experiencias_laborales/')));

      expect(result, equals(tExperienciaLaboralEmpleadoDtoGenerada));  
    });
  });
  
  group('EndPoint  PUT empleado/experiencias_laborales/:uuid_experiencia ', () {
    test('Debe retornar experiencia laboral actualizada del empleado ante éxito con el servidor', () async { 
    final ActualizarExperienciaLaboralEmpleadoDTO tExperienciaActualizarEmpleadoDto = ActualizarExperienciaLaboralEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().crearExperienciaLaboralesEmpleado)) as Map<String,dynamic>);
    final ExperienciaLaboralEmpleadoDTO tExperienciaActualizadaEmpleadoDto = ExperienciaLaboralEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().experienciaLaboralEmpleado)) as Map<String,dynamic>);
      when(mockHttpClient.putUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientSuccess200(TestData().experienciaLaboralEmpleado, 200);

      final result = await fuenteDeDatos.actualizarExperienciaLaboral(tExperienciaActualizadaEmpleadoDto.uuid, tExperienciaActualizarEmpleadoDto);

      verify(mockHttpClient.putUrl(Uri.parse('$DIR_NEST/api/empleado/experiencias_laborales/${tExperienciaActualizadaEmpleadoDto.uuid}')));

      expect(result, equals(tExperienciaActualizadaEmpleadoDto));  
    });
  });

  group('EndPoint  DELETE empleado/experiencias_laborales/:uuid_experiencia ', () {
    test('Debe retornar UNIT(NULL) ante éxito con el servidor', () async { 
    final ExperienciaLaboralEmpleadoDTO tExperienciaLaboralEmpleadoDto = ExperienciaLaboralEmpleadoDTO.fromJson(jsonDecode(fixture(TestData().experienciaLaboralEmpleado)) as Map<String,dynamic>);
      when(mockHttpClient.deleteUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientSuccess200(TestData().experienciaLaboralEmpleado, 200);

      final result = await fuenteDeDatos.eliminarExperienciaLaboral(tExperienciaLaboralEmpleadoDto.uuid);

      verify(mockHttpClient.deleteUrl(Uri.parse('$DIR_NEST/api/empleado/experiencias_laborales/${tExperienciaLaboralEmpleadoDto.uuid}')));

      expect(result, equals(unit));  
    });
  });
}