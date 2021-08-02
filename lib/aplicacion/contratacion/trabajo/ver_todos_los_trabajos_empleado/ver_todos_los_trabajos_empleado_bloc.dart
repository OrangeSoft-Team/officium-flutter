import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/trabajo.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_contratacion_repositorio.dart';

part 'ver_todos_los_trabajos_empleado_event.dart';
part 'ver_todos_los_trabajos_empleado_state.dart';
part 'ver_todos_los_trabajos_empleado_bloc.freezed.dart';

class VerTodosLosTrabajosEmpleadoBloc extends Bloc<
    VerTodosLosTrabajosEmpleadoEvent, VerTodosLosTrabajosEmpleadoState> {
  final IContratacionesRepositorio _iContratacionesRepositorio;

  VerTodosLosTrabajosEmpleadoBloc(this._iContratacionesRepositorio)
      : super(const VerTodosLosTrabajosEmpleadoState.inicial());

  StreamSubscription<Either<ContratacionExcepcion, List<Trabajo>>>?
      _trabajosRecibidosSuscripcion;
  @override
  Stream<VerTodosLosTrabajosEmpleadoState> mapEventToState(
    VerTodosLosTrabajosEmpleadoEvent event,
  ) async* {
    event.map(
      verTodosLosTrabajosEmpezado: (e) async* {
        yield const VerTodosLosTrabajosEmpleadoState.inicial();
        await _trabajosRecibidosSuscripcion?.cancel();
        yield const VerTodosLosTrabajosEmpleadoState.inicial();
        await _trabajosRecibidosSuscripcion?.cancel();
        _trabajosRecibidosSuscripcion = _iContratacionesRepositorio
            .verTodosLosTrabajosEmpleado(e.uuidEmpleado)
            .listen((trabajosOExcepciones) => add(
                VerTodosLosTrabajosEmpleadoEvent.trabajosRecibidos(
                    trabajosOExcepciones)));
      },
      trabajosRecibidos: (e) async* {
        yield e.trabajosOExcepciones.fold(
            (trabajosExcepcion) =>
                VerTodosLosTrabajosEmpleadoState.cargaFallida(
                    trabajosExcepcion),
            (trabajosEmpleado) => VerTodosLosTrabajosEmpleadoState.cargaExitosa(
                trabajosEmpleado));
      },
    );
  }
}
