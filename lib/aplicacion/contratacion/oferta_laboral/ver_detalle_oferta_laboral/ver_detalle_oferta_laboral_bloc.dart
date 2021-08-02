import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_contratacion_repositorio.dart';

part 'ver_detalle_oferta_laboral_event.dart';
part 'ver_detalle_oferta_laboral_state.dart';
part 'ver_detalle_oferta_laboral_bloc.freezed.dart';

@injectable
class VerDetalleOfertaLaboralBloc
    extends Bloc<VerDetalleOfertaLaboralEvent, VerDetalleOfertaLaboralState> {
  final IContratacionesRepositorio _iOfertaLaboralRepositorio;
  VerDetalleOfertaLaboralBloc(this._iOfertaLaboralRepositorio)
      : super(const VerDetalleOfertaLaboralState.inicial());

  @override
  Stream<VerDetalleOfertaLaboralState> mapEventToState(
    VerDetalleOfertaLaboralEvent event,
  ) async* {
    yield const VerDetalleOfertaLaboralState
        .verDetalleOfertaLaboralEnProgreso();
    final Either<ContratacionExcepcion, OfertaLaboral> ofertaOExcepcion =
        await _iOfertaLaboralRepositorio
            .verDetalleOfertaLaboral(event.uuidOfertaLaboral);
    yield ofertaOExcepcion.fold(
        (ofertaExcepcion) =>
            VerDetalleOfertaLaboralState.verDetalleOfertaLaboralFallida(
                ofertaExcepcion),
        (ofertaLaboral) =>
            VerDetalleOfertaLaboralState.verDetalleOfertaLaboralCargada(
                ofertaLaboral));
  }
}