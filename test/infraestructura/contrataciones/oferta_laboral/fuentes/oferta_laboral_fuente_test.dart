import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/fuentes/contratacion_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import '../../../data_pruebas/lector_json.dart';
import 'oferta_laboral_fuente_test.mocks.dart';

class TestData {
  final String ofertaList = 'ofertaLaboralDtoPrueba.json';
  final String ofertaDetalle = 'ofertaLaboralDetalleDtoPrueba.json';
  final String ofertaPostulacion = 'postulacionOfertaDtoPrueba.json';
  TestData();
}

const DIR_SPRING = 'http://orangesoft.ddns.net';
@GenerateMocks([http.Client])
void main() {
  MockClient mockHttpClient = MockClient();
  OfertaLaboralFuente fuenteDeDatos =
      OfertaLaboralFuente(cliente: mockHttpClient);

  setUp(() {
    mockHttpClient = MockClient();
    fuenteDeDatos = OfertaLaboralFuente(cliente: mockHttpClient);
  });

  void setUpMockHttpClientSuccess200(String? testData) {
    when(mockHttpClient.get(any, headers: anyNamed('headers'))).thenAnswer(
        (_) async =>
            http.Response((testData != null) ? fixture(testData) : '', 200));
  }

  void setUpMockHttpClientFailure(int codigoError) {
    when(mockHttpClient.get(any, headers: anyNamed('headers'))).thenAnswer(
        (_) async =>
            http.Response('Ha ocurrido un error inesperado', codigoError));
  }

  group('EndPoint  GET /ofertas_laborales/:uuid_oferta_laboral ', () {
    final OfertaLaboralDetalleDTO tOfertasLaboraleDetalleDto =
        OfertaLaboralDetalleDTO.fromJson(json
            .decode(fixture(TestData().ofertaDetalle)) as Map<String, dynamic>);
    test('Debe retornar detalle de oferta laboral ante éxito con el servidor',
        () async {
      setUpMockHttpClientSuccess200(TestData().ofertaDetalle);

      final result = await fuenteDeDatos.obtenerDetalleOfertasLaboral(
          Identificador.fromUniqueString(tOfertasLaboraleDetalleDto.uuid));

      verify(mockHttpClient.get(
        Uri.parse(
            '$DIR_SPRING/ofertas_laborales/${tOfertasLaboraleDetalleDto.uuid}'),
        headers: {
          'Content-Type': 'application/json',
        },
      ));

      expect(result, equals(tOfertasLaboraleDetalleDto));
    });

    test(': Debe retornar código de error 500 ante fallo del servidor',
        () async {
      setUpMockHttpClientFailure(500);

      final call = fuenteDeDatos.obtenerDetalleOfertasLaboral;

      expect(
          () async => call(
              Identificador.fromUniqueString(tOfertasLaboraleDetalleDto.uuid)),
          throwsA(const TypeMatcher<ServerException>()));
    });
  });
}
