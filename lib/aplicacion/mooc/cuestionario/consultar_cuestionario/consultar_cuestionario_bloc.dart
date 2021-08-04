import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/cuestionario.dart';
import 'package:officium_flutter/dominio/mooc/excepciones_dominio/mooc_excepciones.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/repositorios/i_mooc_repositorio.dart';

part 'consultar_cuestionario_event.dart';
part 'consultar_cuestionario_state.dart';
part 'consultar_cuestionario_bloc.freezed.dart';

class ConsultarCuestionarioBloc
    extends Bloc<ConsultarCuestionarioEvent, ConsultarCuestionarioState> {
  ConsultarCuestionarioBloc(this._iMoocRepositorio)
      : super(const ConsultarCuestionarioState.inicial());
  final IMoocRepositorio _iMoocRepositorio;
  @override
  Stream<ConsultarCuestionarioState> mapEventToState(
    ConsultarCuestionarioEvent event,
  ) async* {
    yield const ConsultarCuestionarioState.cargaEnProgreso();
    final Either<MoocExcepcion, Cuestionario> _cuestionarioOExcepcion =
        await _iMoocRepositorio.consultarCuestionario(event.uuidCurso);
    yield _cuestionarioOExcepcion.fold(
        (cuestionarioExcepcion) =>
            ConsultarCuestionarioState.cargaFallida(cuestionarioExcepcion),
        (cuestionario) =>
            ConsultarCuestionarioState.cargaExitosa(cuestionario));
  }
}
