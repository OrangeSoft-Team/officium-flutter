@Tags(['unit_test'])
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/oferta_laboral/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/fuentes/i_oferta_laboral_fuente.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/repositorios/oferta_laboral_repositorio.dart';

import '../../data_pruebas/lector_json.dart';
import 'oferta_laboral_repositorio_test.mocks.dart';

@GenerateMocks([IOfertaLaboralFuente])
void main() {
  final mockFuenteDeDatos = MockIOfertaLaboralFuente();
  final OfertaLaboralRepositorio ofertaLaboralRepositorio =
      OfertaLaboralRepositorio(fuenteDeDatos: mockFuenteDeDatos);

  /*group('Obtener ofertas laborales', () {
      final tOfertasLaboralesDto = <OfertaLaboralDTO>[
        OfertaLaboralDTO.fromJson(json.decode(fixture('ofertaLaboralDtoPrueba.json')) as Map<String,dynamic>)
      ];
      final List<OfertaLaboral> tOfertaLaboral = <OfertaLaboral>[
        ...tOfertasLaboralesDto.map((e) => e.toDomain())
      ];

      test(
        ': Debe retornar lista de ofertas ante éxito con la fuente remota',
        () {
          // arrange 
          when(mockFuenteDeDatos.obtenerOfertasLaborales())
            .thenAnswer((_) async => tOfertasLaboralesDto);
          var stream = ofertaLaboralRepositorio.verTodasLasOfertasLaborales();
          var result = tOfertaLaboral;
          // act
          stream.listen((event) {
              expect(event.getOrElse(() => null), equals(Right(tOfertaLaboral)));
          });
          // assert
          //verify(mockFuenteDeDatos.obtenerOfertasLaborales()).called(1);
          //expect(stream, emits(Right(tOfertaLaboral)));
          //stream.add(value);
        },
      );
    });*/

  group('Obtener detalle oferta laboral', () {
    final OfertaLaboralDetalleDTO tOfertasLaboralesDetalleDto =
        OfertaLaboralDetalleDTO.fromJson(
            json.decode(fixture('ofertaLaboralDetalleDtoPrueba.json'))
                as Map<String, dynamic>);
    //final Either<OfertaLaboralExcepcion, OfertaLaboral> tOfertaLaboralDetalle = tOfertasLaboralesDetalleDto.toDomain();
    final OfertaLaboral tOfertaLaboralDetalle =
        tOfertasLaboralesDetalleDto.toDomain();
    test(': Debe retornar detalle de oferta ante éxito con la fuente remota',
        () async {
      // arrange
      when(mockFuenteDeDatos
              .obtenerDetalleOfertasLaboral(tOfertaLaboralDetalle.uuid))
          .thenAnswer((_) async => Future.value(tOfertasLaboralesDetalleDto));
      // act
      final result = await ofertaLaboralRepositorio
          .buscarOfertaLaboralConcreta(tOfertaLaboralDetalle.uuid);
      // assert
      verify(mockFuenteDeDatos
          .obtenerDetalleOfertasLaboral(tOfertaLaboralDetalle.uuid));
      expect(
          result,
          equals(Right(tOfertaLaboralDetalle)
              as Right<OfertaLaboralExcepcion, OfertaLaboral>));
    });
  });
  /*
    group('Postular a oferta laboral', () {
      //CHEQUEAR DISPONIBILIDAD API
    });*/
}


/**
 * Expected: Right<dynamic, OfertaLaboral>:
 * <Right(
 * OfertaLaboral(
 * uuid: Value(Right(1)), 
 * titulo: Value(Right(titulo)), 
 * fechaPublicacion: Value(Right(2021-03-27 19:00:00.000Z)), 
 * fechaModificacion: Value(Right(2021-04-27 19:00:00.000Z)), 
 * cargo: Value(Right(cargo)), 
 * sueldo: Value(Right(1000.0)), 
 * descripcionOferta: Value(Right(Test descripcion debe tener 32 caracteres minimoooooooooooooooo)), 
 * duracion: Value(Right(Instance of 'DuracionEscala')), 
 * turno: Value(Right(Diurno)), 
 * numeroVacantes: Value(Right(5)), 
 * uuidEmpresa: Value(Right(1)), 
 * estadoOferta: Value(Right(publicado)), nombreEmpresa: Value(Right(empresaNombre))))>
   Actual: Right<OfertaLaboralExcepcion, 
   OfertaLaboral>:<Right(
   OfertaLaboral(
   uuid: Value(Right(1)), 
   titulo: Value(Right(titulo)), 
   fechaPublicacion: Value(Right(2021-03-27 19:00:00.000Z)), 
   fechaModificacion: Value(Right(2021-04-27 19:00:00.000Z)), 
   cargo: Value(Right(cargo)), 
   sueldo: Value(Right(1000.0)), 
   descripcionOferta: 
   Value(Right(Test descripcion debe tener 32 caracteres minimoooooooooooooooo)),
   duracion: Value(Right(Instance of 'DuracionEscala')), 
   turno: Value(Right(Diurno)), numeroVacantes: Value(Right(5)), 
   uuidEmpresa: Value(Right(1)), 
   estadoOferta: Value(Right(publicado)), 
   nombreEmpresa: Value(Right(empresaNombre))))>
 */