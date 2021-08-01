import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'eliminar_experiencia_laboral_event.dart';
part 'eliminar_experiencia_laboral_state.dart';
part 'eliminar_experiencia_laboral_bloc.freezed.dart';

class EliminarExperienciaLaboralBloc extends Bloc<EliminarExperienciaLaboralEvent, EliminarExperienciaLaboralState> {
  EliminarExperienciaLaboralBloc() : super(_Initial());

  @override
  Stream<EliminarExperienciaLaboralState> mapEventToState(
    EliminarExperienciaLaboralEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
