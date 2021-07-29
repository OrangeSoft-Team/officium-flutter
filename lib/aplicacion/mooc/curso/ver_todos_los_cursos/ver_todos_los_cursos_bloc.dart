import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ver_todos_los_cursos_event.dart';
part 'ver_todos_los_cursos_state.dart';
part 'ver_todos_los_cursos_bloc.freezed.dart';

class VerTodosLosCursosBloc extends Bloc<VerTodosLosCursosEvent, VerTodosLosCursosState> {
  VerTodosLosCursosBloc() : super(_Initial());

  @override
  Stream<VerTodosLosCursosState> mapEventToState(
    VerTodosLosCursosEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
