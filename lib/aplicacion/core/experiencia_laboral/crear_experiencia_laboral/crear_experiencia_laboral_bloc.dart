import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crear_experiencia_laboral_event.dart';
part 'crear_experiencia_laboral_state.dart';
part 'crear_experiencia_laboral_bloc.freezed.dart';

class CrearExperienciaLaboralBloc extends Bloc<CrearExperienciaLaboralEvent, CrearExperienciaLaboralState> {
  CrearExperienciaLaboralBloc() : super(_Initial());

  @override
  Stream<CrearExperienciaLaboralState> mapEventToState(
    CrearExperienciaLaboralEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
