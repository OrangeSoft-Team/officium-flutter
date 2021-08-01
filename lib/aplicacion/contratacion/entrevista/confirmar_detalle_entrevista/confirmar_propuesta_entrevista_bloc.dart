import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirmar_propuesta_entrevista_event.dart';
part 'confirmar_propuesta_entrevista_state.dart';
part 'confirmar_propuesta_entrevista_bloc.freezed.dart';

class ConfirmarPropuestaEntrevistaBloc extends Bloc<ConfirmarPropuestaEntrevistaEvent, ConfirmarPropuestaEntrevistaState> {
  ConfirmarPropuestaEntrevistaBloc() : super(_Initial());

  @override
  Stream<ConfirmarPropuestaEntrevistaState> mapEventToState(
    ConfirmarPropuestaEntrevistaEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
