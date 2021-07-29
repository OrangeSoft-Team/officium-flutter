import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inscribirse_curso_event.dart';
part 'inscribirse_curso_state.dart';
part 'inscribirse_curso_bloc.freezed.dart';

class InscribirseCursoBloc extends Bloc<InscribirseCursoEvent, InscribirseCursoState> {
  InscribirseCursoBloc() : super(_Initial());

  @override
  Stream<InscribirseCursoState> mapEventToState(
    InscribirseCursoEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
