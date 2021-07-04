@Tags(['unit_test'])
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/fuentes/i_oferta_laboral_fuente.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/repositorios/oferta_laboral_repositorio.dart';

import '../../data_pruebas/lector_json.dart';
import 'oferta_laboral_repositorio_test.mocks.dart';

@GenerateMocks([IOfertaLaboralFuente])
void main () {
  final mockFuenteDeDatos = MockIOfertaLaboralFuente();
  final OfertaLaboralRepositorio ofertaLaboralRepositorio = OfertaLaboralRepositorio(fuenteDeDatos: mockFuenteDeDatos);

    group('Obtener ofertas laborales', () {
      final tOfertasLaboralesDto = <OfertaLaboralDTO>[
        OfertaLaboralDTO.fromJson(json.decode(fixture('ofertaLaboralDtoPrueba.json')) as Map<String,dynamic>)
      ];
      final Either<OfertaLaboralExcepcion,List<OfertaLaboral>> aOfertaLaboralList = Right(<OfertaLaboral>[
        ...tOfertasLaboralesDto.map((e) => e.toDomain())
      ]);

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
    
    group('Obtener detalle oferta laboral', 
      () {
      final OfertaLaboralDetalleDTO tOfertasLaboralesDetalleDto = OfertaLaboralDetalleDTO.fromJson(json.decode(fixture('ofertaLaboralDetalleDtoPrueba.json')) as Map<String,dynamic>);
      final Either<OfertaLaboralExcepcion,OfertaLaboral> tOfertaLaboralDetalle = Right(tOfertasLaboralesDetalleDto.toDomain());
      final OfertaLaboral aOfertaLaboral = tOfertasLaboralesDetalleDto.toDomain();
      test(': Debe retornar detalle de oferta ante éxito con la fuente remota', 
      () async {
          // arrange
          when(mockFuenteDeDatos.obtenerDetalleOfertasLaboral(aOfertaLaboral.uuid))
            .thenAnswer((_) async  => Future.value(tOfertasLaboralesDetalleDto));
          // act
          final result = await ofertaLaboralRepositorio.buscarOfertaLaboralConcreta(aOfertaLaboral.uuid);
          // assert
          verify(mockFuenteDeDatos.obtenerDetalleOfertasLaboral(aOfertaLaboral.uuid));
          expect(result.isRight(), equals(tOfertaLaboralDetalle.isRight()));
      });
    });
    
    group('Postular a oferta laboral', () {
      test(': Debe retornar valor unit(NULL) ante éxito con la fuente remota', 
      () async {
          
          final PostulacionOfertaLaboralDTO tPostulacionOfertaLaboralDto = PostulacionOfertaLaboralDTO.fromJson(json.decode(fixture('postulacionOfertaDtoPrueba.json')) as Map<String,dynamic>);
          final PostulacionOfertaLaboral dPostulacionOfertaLaboral = tPostulacionOfertaLaboralDto.toDomain();
          final Either<OfertaLaboralExcepcion,Unit> tPostulacionOfertaLaboral = Right(unit);
          // arrange
          when(mockFuenteDeDatos.aplicarOfertaLaboral(dPostulacionOfertaLaboral.uuidOfertaLaboral,tPostulacionOfertaLaboralDto))
            .thenAnswer((_) async  => Future.value(unit));
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