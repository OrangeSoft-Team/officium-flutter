import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/core/excepciones_dominio/empleado_excepciones.dart';
import 'package:officium_flutter/dominio/core/servicios_dominio/repositorios/i_empleado_repositorio.dart';

part 'eliminar_experiencia_laboral_event.dart';
part 'eliminar_experiencia_laboral_state.dart';
part 'eliminar_experiencia_laboral_bloc.freezed.dart';

class EliminarExperienciaLaboralBloc extends Bloc<
    EliminarExperienciaLaboralEvent, EliminarExperienciaLaboralState> {
  EliminarExperienciaLaboralBloc(this.iEmpleadoRepositorio)
      : super(const EliminarExperienciaLaboralState.initial());
  final IEmpleadoRepositorio iEmpleadoRepositorio;
  @override
  Stream<EliminarExperienciaLaboralState> mapEventToState(
    EliminarExperienciaLaboralEvent event,
  ) async* {
    yield const EliminarExperienciaLaboralState.accionEnProgreso();
    final posibleError = await iEmpleadoRepositorio
        .eliminarExperienciaLaboral(event.uuidExperienciaLaboral);
    posibleError.fold(
        (excepcion) => EliminarExperienciaLaboralState.falloAlBorrar(excepcion),
        (_) => const EliminarExperienciaLaboralState.borradoExitoso());
  }
}
