import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/mooc/entidades/curso.dart';
import 'package:officium_flutter/dominio/mooc/excepciones_dominio/mooc_excepciones.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/repositorios/i_mooc_repositorio.dart';

part 'ver_todos_los_cursos_event.dart';
part 'ver_todos_los_cursos_state.dart';
part 'ver_todos_los_cursos_bloc.freezed.dart';

class VerTodosLosCursosBloc
    extends Bloc<VerTodosLosCursosEvent, VerTodosLosCursosState> {
  VerTodosLosCursosBloc(this._iMoocRepositorio)
      : super(const VerTodosLosCursosState.inicial());
  final IMoocRepositorio _iMoocRepositorio;

  StreamSubscription<Either<MoocExcepcion, List<Curso>>>?
      _listaDeCursosSuscripcion;
  @override
  Stream<VerTodosLosCursosState> mapEventToState(
    VerTodosLosCursosEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      verTodosLosCursosEmpezado: (e) async* {
        yield const VerTodosLosCursosState.inicial();
        await _listaDeCursosSuscripcion?.cancel();
        _listaDeCursosSuscripcion = _iMoocRepositorio
            .verTodosLosCursos()
            .listen((cursosOExcepciones) => add(
                VerTodosLosCursosEvent.cursosRecibidas(cursosOExcepciones)));
      },
      cursosRecibidas: (e) async* {
        yield e.cursosOExcepciones.fold(
            (cursoExcepcion) =>
                VerTodosLosCursosState.cargaFallida(cursoExcepcion),
            (cursos) => VerTodosLosCursosState.cargaExitosa(cursos));
      },
    );
  }

  @override
  Future<void> close() async {
    await _listaDeCursosSuscripcion?.cancel();
    return super.close();
  }
}
