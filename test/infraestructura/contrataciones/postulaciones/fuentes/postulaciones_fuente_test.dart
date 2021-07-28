import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/postulacion/fuentes/postulacion_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/postulacion/modelos/postulacion_empleado_dto.dart';

import '../../../data_pruebas/lector_json.dart';
import '../../../data_pruebas/test_data.dart';
import 'postulaciones_fuente_test.mocks.dart';

const DIR_NEST = 'http://officium-nest.ddns.net:2000';
@GenerateMocks([HttpClient,HttpClientRequest,HttpClientResponse, HttpHeaders, Stream])
void main () {
  MockHttpClient mockHttpClient =  MockHttpClient();
  final MockHttpClientRequest mockHttpClientRequest =  MockHttpClientRequest();
  final MockHttpHeaders mockHttpHeaders =  MockHttpHeaders();
  final MockStream mockStream =  MockStream();
  final MockHttpClientResponse mockHttpClientResponse =  MockHttpClientResponse();
  PostulacionFuente fuenteDeDatos = PostulacionFuente(cliente: mockHttpClient);;

  setUp(() {
    mockHttpClient =  MockHttpClient();
    fuenteDeDatos = PostulacionFuente(cliente: mockHttpClient);
  }); 

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
  group('EndPoint  GET empleado/ofertas_laborales/postulaciones ', () {
    
    test('Debe retornar Postulaciones activas ante éxito con el servidor', () async { 
    final List<PostulacionEmpleadoDTO> tListaPostulacionesDto = [];

      for (final dto 
          in jsonDecode(fixture(TestData().listaPostulacionesActivas))
              as List) {
        tListaPostulacionesDto.add(PostulacionEmpleadoDTO.fromJson(dto as Map<String,dynamic>));
      }

      when(mockHttpClient.getUrl(any))
          .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientSuccess200(TestData().listaPostulacionesActivas, 200);

      final result = await fuenteDeDatos.obtenerPostulacionesActivasEmpleado('1');

      verify(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/postulaciones')));

      expect(result, equals(tListaPostulacionesDto));  
    });
  });
  group('EndPoint  POST empleado/ofertas_laborales/ ', () {
    final PostulacionOfertaLaboralDTO tPostulacionOfertaLaboralDto = 
    PostulacionOfertaLaboralDTO.fromJson(json.decode(fixture(TestData().ofertaPostulacion)) as Map<String,dynamic>);
    
    test('Debe retornar unit(NULL) ante éxito con el servidor', () async {    
      
      when(mockHttpClient.postUrl(any))
      .thenAnswer((_) async => mockHttpClientRequest);  
      setUpMockHttpClientSuccess200(null,201);
      
      final result = await fuenteDeDatos.aplicarOfertaLaboral(tPostulacionOfertaLaboralDto);

      verify(mockHttpClient.postUrl(
        Uri.parse("$DIR_NEST/api/empleado/ofertas_laborales/${tPostulacionOfertaLaboralDto.uuidOfertaLaboral}"),
      ));

      expect(result, equals(unit));
    });

    test(': Debe retornar código de error 500 ante fallo del servidor', () {
      when(mockHttpClient.postUrl(any))
      .thenAnswer((_) async => mockHttpClientRequest);
      setUpMockHttpClientFailure(500);
      final call = fuenteDeDatos.aplicarOfertaLaboral;
      expect(() async => call(tPostulacionOfertaLaboralDto),throwsA(const TypeMatcher<ServerException>()));
    });
  });

  group('EndPoint  PUT mpleado/oferta_laboral/:uuid_postulacion/cancelar ', () {
    final List<PostulacionEmpleadoDTO> tListaPostulacionesDto = [];
    for (final dto
        in jsonDecode(fixture(TestData().listaPostulacionesActivas)) as List) {
      tListaPostulacionesDto
          .add(PostulacionEmpleadoDTO.fromJson(dto as Map<String, dynamic>));
    } 
    test('Debe retornar UNIT(NULL) ante éxito con el servidor', () async {    
      
      when(mockHttpClient.putUrl(any))
      .thenAnswer((_) async => mockHttpClientRequest);  
      setUpMockHttpClientSuccess200(null,200);
      
      final result = await fuenteDeDatos.cancelarPostulacion(tListaPostulacionesDto[0].uuid);
      verify(mockHttpClient.putUrl(
        Uri.parse('$DIR_NEST/api/empleado/oferta_laboral/${tListaPostulacionesDto[0].uuid}/cancelar'),
      ));

      expect(result, equals(unit));
    });
  });
}