import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/leccion.dart';
import 'package:officium_flutter/dominio/mooc/excepciones_dominio/mooc_excepciones.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/repositorios/i_mooc_repositorio.dart';

part 'consultar_leccion_event.dart';
part 'consultar_leccion_state.dart';
part 'consultar_leccion_bloc.freezed.dart';

class ConsultarLeccionBloc
    extends Bloc<ConsultarLeccionEvent, ConsultarLeccionState> {
  ConsultarLeccionBloc(this._iMoocRepositorio)
      : super(const ConsultarLeccionState.inicial());
  final IMoocRepositorio _iMoocRepositorio;

  @override
  Stream<ConsultarLeccionState> mapEventToState(
    ConsultarLeccionEvent event,
  ) async* {
    yield const ConsultarLeccionState.verDetalleLeccionEnProgreso();
    final Either<MoocExcepcion, Leccion> _leccionOExcepcion =
        await _iMoocRepositorio.consultarDetalleLeccion(
            event.uuidCurso, event.uuidLeccion);
    yield _leccionOExcepcion.fold(
        (leccionExcepcion) =>
            ConsultarLeccionState.verDetalleLeccionFallida(leccionExcepcion),
        (leccion) => ConsultarLeccionState.verDetalleLeccionCargada(leccion));
  }
}
