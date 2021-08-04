import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_contratacion_repositorio.dart';

part 'confirmar_propuesta_entrevista_event.dart';
part 'confirmar_propuesta_entrevista_state.dart';
part 'confirmar_propuesta_entrevista_bloc.freezed.dart';

class ConfirmarPropuestaEntrevistaBloc extends Bloc<
    ConfirmarPropuestaEntrevistaEvent, ConfirmarPropuestaEntrevistaState> {
  ConfirmarPropuestaEntrevistaBloc(this.iContratacionesRepositorio)
      : super(const ConfirmarPropuestaEntrevistaState.inicial());
  final IContratacionesRepositorio iContratacionesRepositorio;

  @override
  Stream<ConfirmarPropuestaEntrevistaState> mapEventToState(
    ConfirmarPropuestaEntrevistaEvent event,
  ) async* {
    yield const ConfirmarPropuestaEntrevistaState.accionEnProgreso();
    final Either<ContratacionExcepcion, Unit> posibleError =
        await iContratacionesRepositorio
            .confirmarPropuestaEntrevista(event.uuidEntrevista);
    posibleError.fold(
        (excepcion) =>
            ConfirmarPropuestaEntrevistaState.falloConfirmarPropuestaEntrevista(
                excepcion),
        (_) => const ConfirmarPropuestaEntrevistaState.confirmadaExitosa());
  }
}
