import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultar_lista_habilidades_event.dart';
part 'consultar_lista_habilidades_state.dart';
part 'consultar_lista_habilidades_bloc.freezed.dart';

class ConsultarListaHabilidadesBloc extends Bloc<ConsultarListaHabilidadesEvent, ConsultarListaHabilidadesState> {
  ConsultarListaHabilidadesBloc() : super(_Initial());

  @override
  Stream<ConsultarListaHabilidadesState> mapEventToState(
    ConsultarListaHabilidadesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
