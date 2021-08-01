import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'actualizar_lista_habilidades_event.dart';
part 'actualizar_lista_habilidades_state.dart';
part 'actualizar_lista_habilidades_bloc.freezed.dart';

class ActualizarListaHabilidadesBloc extends Bloc<ActualizarListaHabilidadesEvent, ActualizarListaHabilidadesState> {
  ActualizarListaHabilidadesBloc() : super(_Initial());

  @override
  Stream<ActualizarListaHabilidadesState> mapEventToState(
    ActualizarListaHabilidadesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
