@Tags(['unit_test'])
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/aplicacion/oferta_laboral/postular_oferta_laboral/postular_oferta_laboral_bloc.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';
import '../../infraestructura/data_pruebas/lector_json.dart';
import 'postular_oferta_laboral_bloc_test.mocks.dart';

@GenerateMocks([IContratacionesRepositorio])
void main() {
  final MockIContratacionesRepositorio mockOfertaLaboralRepositorio =
      MockIContratacionesRepositorio();

  test('Debe emitir en orden [inicial]', () {
    final PostulacionOfertaLaboralDTO tPostulacionOfertaLaboralDto =
        PostulacionOfertaLaboralDTO.fromJson(
            json.decode(fixture('postulacionOfertaDtoPrueba.json'))
                as Map<String, dynamic>);
    final PostulacionOfertaLaboral dPostulacionOfertaLaboral =
        tPostulacionOfertaLaboralDto.toDomain();
    const Either<OfertaLaboralExcepcion, Unit> tPostulacionOfertaLaboral =
        Right(unit);

    when(mockOfertaLaboralRepositorio.aplicarOfertaLaboral(
            dPostulacionOfertaLaboral.uuidOfertaLaboral,
            dPostulacionOfertaLaboral.uuidEmpleado,
            dPostulacionOfertaLaboral.uuidEmpresa,
            dPostulacionOfertaLaboral.comentarioPostulacionOfertaLaboral))
        .thenAnswer((_) async => tPostulacionOfertaLaboral);

    final verOfertasLaboralesBloc =
        PostularOfertaLaboralBloc(mockOfertaLaboralRepositorio);

    verOfertasLaboralesBloc.add(PostularOfertaLaboralEvent.postulacionRealizada(
        dPostulacionOfertaLaboral.uuidOfertaLaboral,
        dPostulacionOfertaLaboral.uuidEmpleado,
        dPostulacionOfertaLaboral.uuidEmpresa));

    emitsInOrder([
      PostularOfertaLaboralState.inicial(),
    ]);
  });
}
