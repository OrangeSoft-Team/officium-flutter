import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/infraestructura/comun/server_exception.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/fuentes/curso_fuente.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/cuestionario_curso_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/detalle_curso_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/leccion_curso_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/lista_curso_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/respuestas_cuestionario_dto.dart';

import '../../../data_pruebas/lector_json.dart';
import '../../../data_pruebas/test_data.dart';
import 'curso_fuente_test.mocks.dart';

const DIR_NEST = 'http://officium-nest.ddns.net:2000';
@GenerateMocks([HttpClient,HttpClientRequest,HttpClientResponse, HttpHeaders])
void main () {
  final MockHttpClient mockHttpClient =  MockHttpClient();
  final MockHttpClientRequest mockHttpClientRequest =  MockHttpClientRequest();
  final MockHttpHeaders mockHttpHeaders =  MockHttpHeaders();
  final MockHttpClientResponse mockHttpClientResponse =  MockHttpClientResponse();
  final CursoFuente fuenteDeDatos = CursoFuente(cliente: mockHttpClient);

  
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
  group('EndPoint  POST empleado/curso/:uuid_curso/inscribirse', () {
    final DetalleCursoDTO tDetalleCursoDto = DetalleCursoDTO.fromJson(jsonDecode(fixture(TestData().detalleCurso)) as Map<String,dynamic>);
    test('Debe retornar UNIT(NULL) ante éxito con el servidor', () async { 
      when(mockHttpClient.postUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
      setUpMockHttpClientSuccess200(TestData().detalleCurso, 200);
      final result = await fuenteDeDatos.inscribirEmpleadoCurso(tDetalleCursoDto.uuid);
      verify(mockHttpClient.postUrl(Uri.parse('$DIR_NEST/api/empleado/curso/${tDetalleCursoDto.uuid}/inscribirse')));
      expect(result, equals(unit));
    });

    test(': Debe retornar código de error 500 ante fallo del servidor', () {
      when(mockHttpClient.getUrl(any))
      .thenAnswer((_) async => mockHttpClientRequest);
      setUpMockHttpClientFailure(500); 
      final call = fuenteDeDatos.inscribirEmpleadoCurso;
      verifyNever(mockHttpClient.postUrl(Uri.parse('$DIR_NEST/api/empleado/curso/${tDetalleCursoDto.uuid}/inscribirse')));
      expect(() async => call(tDetalleCursoDto.uuid),throwsA(const TypeMatcher<ServerException>()));
    });
  });
  
  group('EndPoint  GET empleado/curso/:uuid_curso ', () {
    final DetalleCursoDTO tDetalleCursoDto = DetalleCursoDTO.fromJson(jsonDecode(fixture(TestData().detalleCurso)) as Map<String,dynamic>);
    test('Debe retornar detalle de curso ante éxito con el servidor', () async {
      when(mockHttpClient.getUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
      setUpMockHttpClientSuccess200(TestData().detalleCurso, 200);
      final result = await fuenteDeDatos.obtenerDetalleCurso(tDetalleCursoDto.uuid);
      verify(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/curso/${tDetalleCursoDto.uuid}')));
      expect(result, equals(tDetalleCursoDto));  
    });
  });
   group('EndPoint  GET empleado/cursos/', () {
     test('Debe retornar lista de cursos ante éxito con el servidor', () async { 
      final List<ListaCursoDTO> tListadoCursosDto = <ListaCursoDTO>[];
      final List<Map<String, dynamic>> dataJson = List<Map<String, dynamic>>.from(jsonDecode(fixture(TestData().listadoCursos)) as List);
      for(final dto in dataJson){
        tListadoCursosDto.add(ListaCursoDTO.fromJson(dto));
      }
      when(mockHttpClient.getUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
      setUpMockHttpClientSuccess200(TestData().listadoCursos, 200);
      final result = await fuenteDeDatos.obtenerCursosDisponibles();
      verify(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/cursos/')));
      expect(result, equals(tListadoCursosDto));
     });
   });

   group('EndPoint  GET empleado/curso/:uuid_curso/cuestionario ', () {
      test('Debe retornar cuestionario de curso ante éxito con el servidor', () async { 
        final CuestionarioCursoDTO tCuestionarioCursoDto = CuestionarioCursoDTO.fromJson(jsonDecode(fixture(TestData().cuestionarioCurso)) as Map<String,dynamic>);
        final DetalleCursoDTO tDetalleCursoDto = DetalleCursoDTO.fromJson(jsonDecode(fixture(TestData().detalleCurso))as Map<String,dynamic>);
        when(mockHttpClient.getUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
        setUpMockHttpClientSuccess200(TestData().cuestionarioCurso, 200);
        final result = await fuenteDeDatos.obtenerCuestionarioCurso(tDetalleCursoDto.uuid);
        verify(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/curso/${tDetalleCursoDto.uuid}/cuestionario')));
        expect(result, equals(tCuestionarioCursoDto));
      });
   });
   group('EndPoint  POST empleado/curso/:uuid_curso/cuestionario/:uuid_cuestionario ', () {
      test('Debe retornar UNIT(NULL) de curso ante éxito con el servidor', () async { 
        final CuestionarioCursoDTO tCuestionarioCursoDto = CuestionarioCursoDTO.fromJson(jsonDecode(fixture(TestData().cuestionarioCurso)) as Map<String,dynamic>);
        final DetalleCursoDTO tDetalleCursoDto = DetalleCursoDTO.fromJson(jsonDecode(fixture(TestData().detalleCurso)) as Map<String,dynamic>);
        final List<RespuestasCuestionarioDTO> tRespuestasCuestionarioDto = <RespuestasCuestionarioDTO>[];
        final List<Map<String, dynamic>> dataJson = List<Map<String, dynamic>>.from(jsonDecode(fixture(TestData().respuestasCuestionario)) as List);
        for(final dto in dataJson){
          tRespuestasCuestionarioDto.add(RespuestasCuestionarioDTO.fromJson(dto));
        }
        when(mockHttpClient.postUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
        setUpMockHttpClientSuccess200(null, 200);
        final result = await fuenteDeDatos.responderCuestionarioCurso(tDetalleCursoDto.uuid, tCuestionarioCursoDto.uuid, tRespuestasCuestionarioDto);
        verify(mockHttpClient.postUrl(Uri.parse('$DIR_NEST/api/empleado/curso/${tDetalleCursoDto.uuid}/cuestionario/${tCuestionarioCursoDto.uuid}')));
        expect(result, equals(unit));
      });
   });

  group('EndPoint GET empleado/curso/:uuid_curso/leccion/:uuid_leccion', () {
    test('Debe retornar leccion del curso indicado ante éxito con el servidor', () async { 
      final DetalleCursoDTO tDetalleCursoDto = DetalleCursoDTO.fromJson(jsonDecode(fixture(TestData().detalleCurso)) as Map<String,dynamic>);
      final LeccionCursoDTO tLeccionCursoDto = LeccionCursoDTO.fromJson(jsonDecode(fixture(TestData().leccionCurso)) as Map<String,dynamic>);
      when(mockHttpClient.getUrl(any))
        .thenAnswer((_) async => mockHttpClientRequest);
        setUpMockHttpClientSuccess200(TestData().leccionCurso, 200);
        final result = await fuenteDeDatos.obtenerLeccionCurso(tDetalleCursoDto.uuid,tDetalleCursoDto.lecciones[0].uuid);
        verify(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/curso/${tDetalleCursoDto.uuid}/leccion/${tDetalleCursoDto.lecciones[0].uuid}')));
        expect(result, equals(tLeccionCursoDto));
    });
  });
}