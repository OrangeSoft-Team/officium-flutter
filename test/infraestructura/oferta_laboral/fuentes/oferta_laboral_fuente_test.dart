import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/fuentes/oferta_laboral_fuente.dart';

class MockHttpClient extends Mock implements http.Client {}
void main () {
  OfertaLaboralFuente fuenteDeDatos;
  MockHttpClient mockHttpClient;
  
  setUp(() {
    mockHttpClient = MockHttpClient();
    fuenteDeDatos = OfertaLaboralFuente(cliente: mockHttpClient);
  }); 

  //
 group('EndPoint  GET /ofertas_laborales/ ', () {
    //CHEQUEAR DISPONIBILIDAD API
    test('', () {});
  });

  group('EndPoint  GET /ofertas_laborales/:uuid_oferta_laboral ', () {
    //CHEQUEAR DISPONIBILIDAD API
    test('', () {});
  });

  group('EndPoint  POST /ofertas_laborales/:uuid_oferta_laboral ', () {
    //CHEQUEAR DISPONIBILIDAD API
    test('', () {});
  });

  //
}