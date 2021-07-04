@Tags(['unit_test'])
import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:officium_flutter/aplicacion/oferta_laboral/ver_ofertas_laborales/ver_ofertas_laborales_bloc.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/oferta_laboral/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/dominio/oferta_laboral/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_dto.dart';

import '../../infraestructura/data_pruebas/lector_json.dart';
import 'ver_ofertas_laborales_bloc_test.mocks.dart';

@GenerateMocks([IOfertaLaboralRepositorio])
void main() {
  MockIOfertaLaboralRepositorio mockOfertaLaboralRepositorio =  MockIOfertaLaboralRepositorio();

  test(
        'Debe emitir en orden [inicial,cargaEnProgreso,cargaExitosa]',
        () {
      final tOfertasLaboralesDto = <OfertaLaboralDTO>[
        OfertaLaboralDTO.fromJson(json.decode(fixture('ofertaLaboralDtoPrueba.json')) as Map<String,dynamic>)
      ];
      final List<OfertaLaboral> dOfertaLaboralLista = <OfertaLaboral>[...tOfertasLaboralesDto.map((e) => e.toDomain())];
      final Either<OfertaLaboralExcepcion,List<OfertaLaboral>> aOfertaLaboralLista = Right(<OfertaLaboral>[
        ...tOfertasLaboralesDto.map((e) => e.toDomain())
      ]);    
      //final nStream = Stream.
      when(mockOfertaLaboralRepositorio.verTodasLasOfertasLaborales())
          .thenAnswer((_)  =>  Stream.value(aOfertaLaboralLista));

      final verOfertasLaboralesBloc = VerOfertasLaboralesBloc(mockOfertaLaboralRepositorio);

      verOfertasLaboralesBloc.add(VerOfertasLaboralesEvent.verTodasLasOfertasLaboralesEmpezado());

      emitsInOrder([
        VerOfertasLaboralesState.inicial(),
        VerOfertasLaboralesState.cargaEnProgreso(),
        VerOfertasLaboralesState.cargaExitosa(dOfertaLaboralLista)
      ]);
    });
}
