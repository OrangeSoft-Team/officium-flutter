@Tags(['unit_test'])
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/infraestructura/contrataciones/entrevista/fuentes/i_entrevista_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/fuentes/i_contratacion_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/repositorios/contratacion_repositorio.dart';
import 'package:officium_flutter/infraestructura/contrataciones/postulacion/fuentes/i_postulacion_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/trabajo/fuentes/i_trabajo_fuente.dart';
import '../../../data_pruebas/lector_json.dart';
import 'oferta_laboral_repositorio_test.mocks.dart';

@GenerateMocks([IContratacionFuente,ITrabajoFuente,IPostulacionFuente,IEntrevistaFuente])
void main() {
  final mockFuenteDeDatos = MockIContratacionFuente();
  final mockFuentePostulacion = MockIPostulacionFuente();
  final mockFuenteTrabajo = MockITrabajoFuente();
  final mockFuenteEntrevista = MockIEntrevistaFuente();
  final ContratacionRepositorio ofertaLaboralRepositorio = ContratacionRepositorio(
      fuenteDeDatos: mockFuenteDeDatos, 
      fuenteDeDatosTrabajo: mockFuenteTrabajo,
      fuenteDeDatosEntrevista: mockFuenteEntrevista,
      fuenteDeDatosPostulacion: mockFuentePostulacion
      );

  group('Obtener ofertas laborales', () {
    final tOfertasLaboralesDto = <OfertaLaboralDTO>[
      OfertaLaboralDTO.fromJson(
          json.decode(fixture('ofertaLaboralDtoPrueba.json'))
              as Map<String, dynamic>)
    ];
    final Either<ContratacionExcepcion, List<OfertaLaboral>>
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
  });

  group('Obtener detalle oferta laboral', () {
    final OfertaLaboralDetalleDTO tOfertasLaboralesDetalleDto =
        OfertaLaboralDetalleDTO.fromJson(
            json.decode(fixture('ofertaLaboralDetalleDtoPrueba.json'))
                as Map<String, dynamic>);
    final Either<ContratacionExcepcion, OfertaLaboral> tOfertaLaboralDetalle =
        Right(tOfertasLaboralesDetalleDto.toDomain());
    final OfertaLaboral aOfertaLaboral = tOfertasLaboralesDetalleDto.toDomain();
    test(': Debe retornar detalle de oferta ante éxito con la fuente remota',
        () async {
      // arrange
      when(mockFuenteDeDatos.obtenerDetalleOfertasLaboral(aOfertaLaboral.uuid))
          .thenAnswer((_) async => Future.value(tOfertasLaboralesDetalleDto));
      // act
      final result = await ofertaLaboralRepositorio
          .verDetalleOfertaLaboral(aOfertaLaboral.uuid);
      // assert
      verify(
          mockFuenteDeDatos.obtenerDetalleOfertasLaboral(aOfertaLaboral.uuid));
      expect(result.isRight(), equals(tOfertaLaboralDetalle.isRight()));
    });
  });

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
      // arrange
      when(mockFuenteDeDatos.aplicarOfertaLaboral(
              dPostulacionOfertaLaboral.uuidOfertaLaboral,
              tPostulacionOfertaLaboralDto))
          .thenAnswer((_) async => Future.value(unit));
      // act
      final result = await ofertaLaboralRepositorio.aplicarOfertaLaboral(
          dPostulacionOfertaLaboral.uuidOfertaLaboral,
          dPostulacionOfertaLaboral.uuidEmpleado,
          dPostulacionOfertaLaboral.uuidEmpresa,
          dPostulacionOfertaLaboral.comentarioPostulacionOfertaLaboral);
      // assert
      expect(result, equals(tPostulacionOfertaLaboral));
    });
  });
}
