import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ver_todos_los_certificados_empleado_event.dart';
part 'ver_todos_los_certificados_empleado_state.dart';
part 'ver_todos_los_certificados_empleado_bloc.freezed.dart';

class VerTodosLosCertificadosEmpleadoBloc extends Bloc<VerTodosLosCertificadosEmpleadoEvent, VerTodosLosCertificadosEmpleadoState> {
  VerTodosLosCertificadosEmpleadoBloc() : super(_Initial());

  @override
  Stream<VerTodosLosCertificadosEmpleadoState> mapEventToState(
    VerTodosLosCertificadosEmpleadoEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
