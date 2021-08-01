@Tags(['unit_test'])
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/aplicacion/contratacion/oferta_laboral/ver_ofertas_laborales/ver_ofertas_laborales_bloc.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/oferta_laboral_dto.dart';
import '../../../infraestructura/data_pruebas/lector_json.dart';
import 'ver_ofertas_laborales_bloc_test.mocks.dart';

@GenerateMocks([IContratacionesRepositorio])
void main() {
  final MockIContratacionesRepositorio mockOfertaLaboralRepositorio =
      MockIContratacionesRepositorio();

  test('Debe emitir en orden [inicial,cargaEnProgreso,cargaExitosa]', () {
    final tOfertasLaboralesDto = <OfertaLaboralDTO>[
      OfertaLaboralDTO.fromJson(
          json.decode(fixture('ofertaLaboralDtoPrueba.json'))
              as Map<String, dynamic>)
    ];
    final List<OfertaLaboral> dOfertaLaboralLista = <OfertaLaboral>[
      ...tOfertasLaboralesDto.map((e) => e.toDomain())
    ];
    final Either<ContratacionExcepcion, List<OfertaLaboral>>
        aOfertaLaboralLista = Right(
            <OfertaLaboral>[...tOfertasLaboralesDto.map((e) => e.toDomain())]);
    //final nStream = Stream.
    when(mockOfertaLaboralRepositorio.verTodasLasOfertasLaborales())
        .thenAnswer((_) => Stream.value(aOfertaLaboralLista));

    final verOfertasLaboralesBloc =
        VerOfertasLaboralesBloc(mockOfertaLaboralRepositorio);

    verOfertasLaboralesBloc.add(
        const VerOfertasLaboralesEvent.verTodasLasOfertasLaboralesEmpezado());

    emitsInOrder([
      const VerOfertasLaboralesState.inicial(),
      const VerOfertasLaboralesState.cargaEnProgreso(),
      VerOfertasLaboralesState.cargaExitosa(dOfertaLaboralLista)
    ]);
  });
}
