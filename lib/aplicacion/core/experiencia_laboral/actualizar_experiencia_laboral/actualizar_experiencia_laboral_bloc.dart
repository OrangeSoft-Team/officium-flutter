import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'actualizar_experiencia_laboral_event.dart';
part 'actualizar_experiencia_laboral_state.dart';
part 'actualizar_experiencia_laboral_bloc.freezed.dart';

class ActualizarExperienciaLaboralBloc extends Bloc<ActualizarExperienciaLaboralEvent, ActualizarExperienciaLaboralState> {
  ActualizarExperienciaLaboralBloc() : super(_Initial());

  @override
  Stream<ActualizarExperienciaLaboralState> mapEventToState(
    ActualizarExperienciaLaboralEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
