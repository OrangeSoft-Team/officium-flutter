import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultar_cuestionario_event.dart';
part 'consultar_cuestionario_state.dart';
part 'consultar_cuestionario_bloc.freezed.dart';

class ConsultarCuestionarioBloc extends Bloc<ConsultarCuestionarioEvent, ConsultarCuestionarioState> {
  ConsultarCuestionarioBloc() : super(_Initial());

  @override
  Stream<ConsultarCuestionarioState> mapEventToState(
    ConsultarCuestionarioEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
