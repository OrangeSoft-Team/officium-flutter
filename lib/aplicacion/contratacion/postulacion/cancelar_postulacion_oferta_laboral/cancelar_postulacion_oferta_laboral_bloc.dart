import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';

part 'cancelar_postulacion_oferta_laboral_event.dart';
part 'cancelar_postulacion_oferta_laboral_state.dart';
part 'cancelar_postulacion_oferta_laboral_bloc.freezed.dart';

class CancelarPostulacionOfertaLaboralBloc extends Bloc<
    CancelarPostulacionOfertaLaboralEvent,
    CancelarPostulacionOfertaLaboralState> {
  final IContratacionesRepositorio _iContratacionesRepositorio;

  CancelarPostulacionOfertaLaboralBloc(this._iContratacionesRepositorio)
      : super(const CancelarPostulacionOfertaLaboralState.initial());

  @override
  Stream<CancelarPostulacionOfertaLaboralState> mapEventToState(
    CancelarPostulacionOfertaLaboralEvent event,
  ) async* {
    yield const CancelarPostulacionOfertaLaboralState.accionEnProgreso();
    final Either<ContratacionExcepcion, Unit> posibleFallo =
        await _iContratacionesRepositorio.cancelarPostulacionOfertaLaboral(
            event.uuidPostulacionOfertaLabioral);
    yield posibleFallo.fold(
        (fallo) =>
            CancelarPostulacionOfertaLaboralState.falloCancelarPostulacion(
                fallo),
        (_) => const CancelarPostulacionOfertaLaboralState.canceladaExitosa());
  }
}
