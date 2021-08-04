import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/excepciones_dominio/mooc_excepciones.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/repositorios/i_mooc_repositorio.dart';

part 'inscribirse_curso_event.dart';
part 'inscribirse_curso_state.dart';
part 'inscribirse_curso_bloc.freezed.dart';

class InscribirseCursoBloc
    extends Bloc<InscribirseCursoEvent, InscribirseCursoState> {
  InscribirseCursoBloc(this._iMoocRepositorio)
      : super(const InscribirseCursoState.inicial());
  final IMoocRepositorio _iMoocRepositorio;
  @override
  Stream<InscribirseCursoState> mapEventToState(
    InscribirseCursoEvent event,
  ) async* {
    yield const InscribirseCursoState.accionEnProgreso();
    final Either<MoocExcepcion, Unit> posibleError =
        await _iMoocRepositorio.inscribirseCurso(event.uuidCurso);
    yield posibleError.fold(
        (inscripcionCursoExcepcion) =>
            InscribirseCursoState.falloInscripcionCurso(
                inscripcionCursoExcepcion),
        (_) => const InscribirseCursoState.inscripcionCursoExitosa());
  }
}
