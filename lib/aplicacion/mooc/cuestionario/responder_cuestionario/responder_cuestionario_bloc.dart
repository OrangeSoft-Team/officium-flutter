import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/respuesta_cuestionario.dart';
import 'package:officium_flutter/dominio/mooc/excepciones_dominio/mooc_excepciones.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/repositorios/i_mooc_repositorio.dart';

part 'responder_cuestionario_event.dart';
part 'responder_cuestionario_state.dart';
part 'responder_cuestionario_bloc.freezed.dart';

class ResponderCuestionarioBloc
    extends Bloc<ResponderCuestionarioEvent, ResponderCuestionarioState> {
  ResponderCuestionarioBloc(this._iMoocRepositorio)
      : super(const ResponderCuestionarioState.inicial());
  final IMoocRepositorio _iMoocRepositorio;
  @override
  Stream<ResponderCuestionarioState> mapEventToState(
    ResponderCuestionarioEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield const ResponderCuestionarioState.accionEnProgreso();
    final Either<MoocExcepcion, Unit> _posibleFalloResponderCuestionario =
        await _iMoocRepositorio.responderCuestionario(event.uuidCuestionario,
            event.uuidCurso, event.respuestasCuestionario);
    yield _posibleFalloResponderCuestionario.fold(
        (cuestionarioExcepcion) =>
            ResponderCuestionarioState.falloResponderCuestionario(
                cuestionarioExcepcion),
        (_) => const ResponderCuestionarioState.cuestionarioRespondido());
  }
}
