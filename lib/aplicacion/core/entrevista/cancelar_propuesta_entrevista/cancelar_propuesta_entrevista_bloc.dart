import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancelar_propuesta_entrevista_event.dart';
part 'cancelar_propuesta_entrevista_state.dart';
part 'cancelar_propuesta_entrevista_bloc.freezed.dart';

class CancelarPropuestaEntrevistaBloc extends Bloc<CancelarPropuestaEntrevistaEvent, CancelarPropuestaEntrevistaState> {
  CancelarPropuestaEntrevistaBloc() : super(_Initial());

  @override
  Stream<CancelarPropuestaEntrevistaState> mapEventToState(
    CancelarPropuestaEntrevistaEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
