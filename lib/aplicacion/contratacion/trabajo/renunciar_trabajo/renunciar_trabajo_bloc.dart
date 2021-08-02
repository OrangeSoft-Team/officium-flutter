import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_contratacion_repositorio.dart';

part 'renunciar_trabajo_event.dart';
part 'renunciar_trabajo_state.dart';
part 'renunciar_trabajo_bloc.freezed.dart';

class RenunciarTrabajoBloc
    extends Bloc<RenunciarTrabajoEvent, RenunciarTrabajoState> {
  RenunciarTrabajoBloc(this._iContratacionesRepositorio)
      : super(const RenunciarTrabajoState.inicial());
  final IContratacionesRepositorio _iContratacionesRepositorio;
  @override
  Stream<RenunciarTrabajoState> mapEventToState(
    RenunciarTrabajoEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield const RenunciarTrabajoState.accionEnProgreso();
    final Either<ContratacionExcepcion, Unit> _posibleFalloAlRenunciar =
        await _iContratacionesRepositorio.renunciarTrabajo(event.uuidTrabajo);
    yield _posibleFalloAlRenunciar.fold(
        (excepcion) => RenunciarTrabajoState.falloRenunciarTrabajo(excepcion),
        (_) => const RenunciarTrabajoState.trabajoRenunciadoExitosamente());
  }
}
