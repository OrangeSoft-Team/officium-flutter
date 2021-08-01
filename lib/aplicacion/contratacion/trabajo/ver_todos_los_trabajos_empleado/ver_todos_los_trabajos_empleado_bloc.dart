import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ver_todos_los_trabajos_empleado_event.dart';
part 'ver_todos_los_trabajos_empleado_state.dart';
part 'ver_todos_los_trabajos_empleado_bloc.freezed.dart';

class VerTodosLosTrabajosEmpleadoBloc extends Bloc<VerTodosLosTrabajosEmpleadoEvent, VerTodosLosTrabajosEmpleadoState> {
  VerTodosLosTrabajosEmpleadoBloc() : super(_Initial());

  @override
  Stream<VerTodosLosTrabajosEmpleadoState> mapEventToState(
    VerTodosLosTrabajosEmpleadoEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
