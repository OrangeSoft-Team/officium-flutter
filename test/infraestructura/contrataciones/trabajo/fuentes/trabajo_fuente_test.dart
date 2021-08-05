import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/infraestructura/contrataciones/trabajo/fuentes/trabajo_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/trabajo/modelos/detalle_trabajo_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/trabajo/modelos/trabajo_empleado_dto.dart';

import '../../../data_pruebas/lector_json.dart';
import '../../../data_pruebas/test_data.dart';
import 'trabajo_fuente_test.mocks.dart';

const DIR_NEST = 'http://officium-nest.ddns.net:2000';
@GenerateMocks([HttpClient,HttpClientRequest,HttpClientResponse, HttpHeaders])
void main () {
  final MockHttpClient mockHttpClient =  MockHttpClient();
  final MockHttpClientRequest mockHttpClientRequest =  MockHttpClientRequest();
  final MockHttpHeaders mockHttpHeaders =  MockHttpHeaders();
  //final MockStream mockStream =  MockStream();
  final MockHttpClientResponse mockHttpClientResponse =  MockHttpClientResponse();
  final TrabajoFuente fuenteDeDatos = TrabajoFuente(cliente: mockHttpClient);


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
  group('EndPoint  GET empleado/trabajos ', () {   
    test('Debe retornar trabajos registrados de un empleado ante éxito con el servidor', () async { 
    final List<TrabajoEmpleadoDTO> tTrabajosEmpleadoDto = [];

      for (final dto 
          in jsonDecode(fixture(TestData().trabajosEmpleado))
              as List) {
        tTrabajosEmpleadoDto.add(TrabajoEmpleadoDTO.fromJson(dto as Map<String,dynamic>));
      }

      when(mockHttpClient.getUrl(any))
          .thenAnswer((_) async => mockHttpClientRequest);

      setUpMockHttpClientSuccess200(TestData().trabajosEmpleado, 200);

      final result = await fuenteDeDatos.obtenerTrabajosEmpleado();

      verify(mockHttpClient.getUrl(Uri.parse('$DIR_NEST/api/empleado/trabajos')));

      expect(result, equals(tTrabajosEmpleadoDto));  
    });
  });
  group('EndPoint  GET empleado/trabajos/:uuid_trabajo ', () {
    final DetalleTrabajoEmpleadoDTO tDetalleTrabajoEmpleadoDto = 
    DetalleTrabajoEmpleadoDTO.fromJson(json.decode(fixture(TestData().detalleTrabajoEmpleado)) as Map<String,dynamic>);
    
    test('Debe retornar detalle de trabajo ante éxito con el servidor', () async {    
      
      when(mockHttpClient.getUrl(any))
      .thenAnswer((_) async => mockHttpClientRequest);  
      setUpMockHttpClientSuccess200(TestData().detalleTrabajoEmpleado,200);
      
      final result = await fuenteDeDatos.obtenerDetalleTrabajo(tDetalleTrabajoEmpleadoDto.uuid);

      verify(mockHttpClient.getUrl(
        Uri.parse("$DIR_NEST/api/empleado/trabajos/${tDetalleTrabajoEmpleadoDto.uuid}"),
      ));

      expect(result, equals(tDetalleTrabajoEmpleadoDto));
    });
  });

  group('EndPoint  PUT empleado/trabajos/:uuid_trabajo/renunciar ', () {
    final DetalleTrabajoEmpleadoDTO tDetalleTrabajoEmpleadoDto = 
    DetalleTrabajoEmpleadoDTO.fromJson(json.decode(fixture(TestData().detalleTrabajoEmpleado)) as Map<String,dynamic>);
    test('Debe retornar UNIT(NULL) ante éxito con el servidor', () async {    
      
      when(mockHttpClient.putUrl(any))
      .thenAnswer((_) async => mockHttpClientRequest);  
      setUpMockHttpClientSuccess200(null,200);
      
      final result = await fuenteDeDatos.renunciarTrabajoEmpleado(tDetalleTrabajoEmpleadoDto.uuid);
      verify(mockHttpClient.putUrl(
        Uri.parse('$DIR_NEST/api/empleado/trabajo/${tDetalleTrabajoEmpleadoDto.uuid}/renunciar'),
      ));

      expect(result, equals(unit));
    });
  });
}