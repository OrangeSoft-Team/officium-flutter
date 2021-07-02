
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/fuentes/oferta_laboral_fuente.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/repositorios/oferta_laboral_repositorio.dart';

class MockFuenteDeDatos extends Mock implements OfertaLaboralFuente {}


void main () {
  OfertaLaboralRepositorio ofertaLaboralRepositorio;
  MockFuenteDeDatos fuenteDeDatos;
  
  setUp(() {
    fuenteDeDatos = MockFuenteDeDatos();
    ofertaLaboralRepositorio = OfertaLaboralRepositorio(fuenteDeDatos: fuenteDeDatos);
  });

    group('Obtener ofertas laborales', () {
      //CHEQUEAR DISPONIBILIDAD API
      test('', () {

      });

    });

    group('Obtener detalle oferta laboral', () {
      //CHEQUEAR DISPONIBILIDAD API
      test('', () {

      });
    });

    group('Postular a oferta laboral', () {
      //CHEQUEAR DISPONIBILIDAD API
    });
}