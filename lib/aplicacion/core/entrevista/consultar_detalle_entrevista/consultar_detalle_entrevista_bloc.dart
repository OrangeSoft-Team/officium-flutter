import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultar_detalle_entrevista_event.dart';
part 'consultar_detalle_entrevista_state.dart';
part 'consultar_detalle_entrevista_bloc.freezed.dart';

class ConsultarDetalleEntrevistaBloc extends Bloc<ConsultarDetalleEntrevistaEvent, ConsultarDetalleEntrevistaState> {
  ConsultarDetalleEntrevistaBloc() : super(_Initial());

  @override
  Stream<ConsultarDetalleEntrevistaState> mapEventToState(
    ConsultarDetalleEntrevistaEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
