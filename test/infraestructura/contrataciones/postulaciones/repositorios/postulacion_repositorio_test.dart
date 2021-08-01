@Tags(['unit_test'])
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/postulacion/fuentes/i_postulacion_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/postulacion/repositorios/postulacion_repositorio.dart';
import '../../../data_pruebas/lector_json.dart';
import 'postulacion_repositorio_test.mocks.dart';

@GenerateMocks([IPostulacionFuente])
void main() {
  final mockFuenteDeDatos = MockIPostulacionFuente();
  final PostulacionRepositorio postulacionRepositorio =
      PostulacionRepositorio(fuenteDeDatos: mockFuenteDeDatos);

  /*group('Obtener Postulaciones activas del empleado', () {
    final tOfertasLaboralesDto = <OfertaLaboralDTO>[
      OfertaLaboralDTO.fromJson(
          json.decode(fixture('ofertaLaboralDtoPrueba.json'))
              as Map<String, dynamic>)
    ];
    final Either<OfertaLaboralExcepcion, List<OfertaLaboral>>
        aOfertaLaboralList = Right(
            <OfertaLaboral>[...tOfertasLaboralesDto.map((e) => e.toDomain())]);

    test(
      ': Debe retornar lista de ofertas ante éxito con la fuente remota',
      () {
        // arrange
        when(mockFuenteDeDatos.obtenerOfertasLaborales())
            .thenAnswer((_) async => tOfertasLaboralesDto);
        final stream = ofertaLaboralRepositorio.verTodasLasOfertasLaborales();
        // act
        stream.listen((event) {
          // assert
          expect(event.isRight(), equals(aOfertaLaboralList.isRight()));
        });
      },
    );
  });*/

  group('Postular a oferta laboral', () {
    test(': Debe retornar valor unit(NULL) ante éxito con la fuente remota',
        () async {
      final PostulacionOfertaLaboralDTO tPostulacionOfertaLaboralDto =
          PostulacionOfertaLaboralDTO.fromJson(
              json.decode(fixture('postulacionOfertaDtoPrueba.json'))
                  as Map<String, dynamic>);
      final PostulacionOfertaLaboral dPostulacionOfertaLaboral =
          tPostulacionOfertaLaboralDto.toDomain();
      const Either<ContratacionExcepcion, Unit> tPostulacionOfertaLaboral =
          Right(unit);
      when(mockFuenteDeDatos.aplicarOfertaLaboral(tPostulacionOfertaLaboralDto))
          .thenAnswer((_) async => Future.value(unit));
      final result = await postulacionRepositorio.aplicarOfertaLaboral(
          dPostulacionOfertaLaboral.uuidOfertaLaboral,
          dPostulacionOfertaLaboral.uuidEmpleado,
          dPostulacionOfertaLaboral.uuidEmpresa,
          dPostulacionOfertaLaboral.comentarioPostulacionOfertaLaboral);
      expect(result, equals(tPostulacionOfertaLaboral));
    });
  });
}
