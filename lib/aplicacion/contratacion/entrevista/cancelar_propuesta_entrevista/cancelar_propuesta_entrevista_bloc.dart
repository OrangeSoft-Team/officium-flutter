import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_contratacion_repositorio.dart';

part 'cancelar_propuesta_entrevista_event.dart';
part 'cancelar_propuesta_entrevista_state.dart';
part 'cancelar_propuesta_entrevista_bloc.freezed.dart';

class CancelarPropuestaEntrevistaBloc extends Bloc<
    CancelarPropuestaEntrevistaEvent, CancelarPropuestaEntrevistaState> {
  CancelarPropuestaEntrevistaBloc(this.iContratacionesRepositorio)
      : super(const CancelarPropuestaEntrevistaState.inicial());
  final IContratacionesRepositorio iContratacionesRepositorio;

  @override
  Stream<CancelarPropuestaEntrevistaState> mapEventToState(
    CancelarPropuestaEntrevistaEvent event,
  ) async* {
    yield const CancelarPropuestaEntrevistaState.accionEnProgreso();
    final posibleError = await iContratacionesRepositorio
        .cancelarPostulacionOfertaLaboral(event.uuidPostulacionOfertaLabioral);
    posibleError.fold(
        (excepcion) =>
            CancelarPropuestaEntrevistaState.falloCancelarPropuestaEntrevista(
                excepcion),
        (_) => const CancelarPropuestaEntrevistaState
            .cancelarPropuestaEntrevistaExitosa());
  }
}
