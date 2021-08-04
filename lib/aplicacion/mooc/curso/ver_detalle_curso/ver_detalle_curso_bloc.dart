import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/curso.dart';
import 'package:officium_flutter/dominio/mooc/excepciones_dominio/mooc_excepciones.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/repositorios/i_mooc_repositorio.dart';

part 'ver_detalle_curso_event.dart';
part 'ver_detalle_curso_state.dart';
part 'ver_detalle_curso_bloc.freezed.dart';

class VerDetalleCursoBloc
    extends Bloc<VerDetalleCursoEvent, VerDetalleCursoState> {
  VerDetalleCursoBloc(this._iMoocRepositorio)
      : super(const VerDetalleCursoState.inicial());
  final IMoocRepositorio _iMoocRepositorio;
  @override
  Stream<VerDetalleCursoState> mapEventToState(
    VerDetalleCursoEvent event,
  ) async* {
    yield const VerDetalleCursoState.verDetalleCursoEnProgreso();
    final Either<MoocExcepcion, Curso> cursoOExcepcion =
        await _iMoocRepositorio.verDetalleCurso(event.uuidCurso);
    yield cursoOExcepcion.fold(
        (cursoExcepcion) =>
            VerDetalleCursoState.verDetalleCursoFallida(cursoExcepcion),
        (curso) => VerDetalleCursoState.verDetalleCursoCargada(curso));
  }
}
