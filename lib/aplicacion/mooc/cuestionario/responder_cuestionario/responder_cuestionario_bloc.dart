import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'responder_cuestionario_event.dart';
part 'responder_cuestionario_state.dart';
part 'responder_cuestionario_bloc.freezed.dart';

class ResponderCuestionarioBloc extends Bloc<ResponderCuestionarioEvent, ResponderCuestionarioState> {
  ResponderCuestionarioBloc() : super(_Initial());

  @override
  Stream<ResponderCuestionarioState> mapEventToState(
    ResponderCuestionarioEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
