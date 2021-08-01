import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ver_perfil_empleado_event.dart';
part 'ver_perfil_empleado_state.dart';
part 'ver_perfil_empleado_bloc.freezed.dart';

class VerPerfilEmpleadoBloc extends Bloc<VerPerfilEmpleadoEvent, VerPerfilEmpleadoState> {
  VerPerfilEmpleadoBloc() : super(_Initial());

  @override
  Stream<VerPerfilEmpleadoState> mapEventToState(
    VerPerfilEmpleadoEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
