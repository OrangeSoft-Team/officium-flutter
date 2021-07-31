import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultar_leccion_event.dart';
part 'consultar_leccion_state.dart';
part 'consultar_leccion_bloc.freezed.dart';

class ConsultarLeccionBloc extends Bloc<ConsultarLeccionEvent, ConsultarLeccionState> {
  ConsultarLeccionBloc() : super(_Initial());

  @override
  Stream<ConsultarLeccionState> mapEventToState(
    ConsultarLeccionEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
