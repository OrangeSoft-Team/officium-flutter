import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/entrevista.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_contratacion_repositorio.dart';

part 'consultar_detalle_entrevista_event.dart';
part 'consultar_detalle_entrevista_state.dart';
part 'consultar_detalle_entrevista_bloc.freezed.dart';

class ConsultarDetalleEntrevistaBloc extends Bloc<
    ConsultarDetalleEntrevistaEvent, ConsultarDetalleEntrevistaState> {
  ConsultarDetalleEntrevistaBloc(this.iContratacionesRepositorio)
      : super(const ConsultarDetalleEntrevistaState.inicial());
  final IContratacionesRepositorio iContratacionesRepositorio;
  @override
  Stream<ConsultarDetalleEntrevistaState> mapEventToState(
    ConsultarDetalleEntrevistaEvent event,
  ) async* {
    yield const ConsultarDetalleEntrevistaState
        .verDetalleEntrevistaEnProgreso();
    final Either<ContratacionExcepcion, Entrevista> entrevistaOExcepcion =
        await iContratacionesRepositorio
            .consultarDetalleEntrevista(event.uuidEntrevista);
    entrevistaOExcepcion.fold(
        (excepcion) =>
            ConsultarDetalleEntrevistaState.verDetalleEntrevistaFallida(
                excepcion),
        (entrevista) =>
            ConsultarDetalleEntrevistaState.verDetalleEntrevistaCargada(
                entrevista));
  }
}
