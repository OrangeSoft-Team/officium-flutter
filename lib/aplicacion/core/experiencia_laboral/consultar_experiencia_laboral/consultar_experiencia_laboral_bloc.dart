import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultar_experiencia_laboral_event.dart';
part 'consultar_experiencia_laboral_state.dart';
part 'consultar_experiencia_laboral_bloc.freezed.dart';

class ConsultarExperienciaLaboralBloc extends Bloc<ConsultarExperienciaLaboralEvent, ConsultarExperienciaLaboralState> {
  ConsultarExperienciaLaboralBloc() : super(_Initial());

  @override
  Stream<ConsultarExperienciaLaboralState> mapEventToState(
    ConsultarExperienciaLaboralEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
