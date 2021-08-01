@Tags(['unit_test'])
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/aplicacion/contratacion/oferta_laboral/ver_detalle_oferta_laboral/ver_detalle_oferta_laboral_bloc.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import '../../../infraestructura/data_pruebas/lector_json.dart';
import 'ver_ofertas_laborales_bloc_test.mocks.dart';

@GenerateMocks([IContratacionesRepositorio])
void main() {
  final MockIContratacionesRepositorio mockOfertaLaboralRepositorio =
      MockIContratacionesRepositorio();

  test(
      'Debe emitir en orden [inicial,verDetalleOfertaLaboralEnProgreso,verDetalleOfertaLaboralCargada(OfertaLaboralDetalle)]',
      () {
    final tOfertasLaboralDetalleDto = OfertaLaboralDetalleDTO.fromJson(
        json.decode(fixture('ofertaLaboralDetalleDtoPrueba.json'))
            as Map<String, dynamic>);
    final OfertaLaboral dOfertaLaboralDetalle =
        tOfertasLaboralDetalleDto.toDomain();
    final Either<OfertaLaboralExcepcion, OfertaLaboral> tOfertaLaboralDetalle =
        Right(dOfertaLaboralDetalle);

    when(mockOfertaLaboralRepositorio
            .verDetalleOfertaLaboral(dOfertaLaboralDetalle.uuid))
        .thenAnswer((_) => Future.value(tOfertaLaboralDetalle));

    final verOfertasLaboralesBloc =
        VerDetalleOfertaLaboralBloc(mockOfertaLaboralRepositorio);

    verOfertasLaboralesBloc.add(
        VerDetalleOfertaLaboralEvent.verDetalleOfertaLaboralEmpezado(
            dOfertaLaboralDetalle.uuid));

    emitsInOrder([
      const VerDetalleOfertaLaboralState.inicial(),
      const VerDetalleOfertaLaboralState.verDetalleOfertaLaboralEnProgreso(),
      VerDetalleOfertaLaboralState.verDetalleOfertaLaboralCargada(
          dOfertaLaboralDetalle)
    ]);
  });
}
