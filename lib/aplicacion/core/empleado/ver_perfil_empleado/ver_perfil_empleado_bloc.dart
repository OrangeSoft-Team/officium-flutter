import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/core/entidades/empleado.dart';
import 'package:officium_flutter/dominio/core/excepciones_dominio/empleado_excepciones.dart';
import 'package:officium_flutter/dominio/core/servicios_dominio/repositorios/i_empleado_repositorio.dart';

part 'ver_perfil_empleado_event.dart';
part 'ver_perfil_empleado_state.dart';
part 'ver_perfil_empleado_bloc.freezed.dart';

class VerPerfilEmpleadoBloc
    extends Bloc<VerPerfilEmpleadoEvent, VerPerfilEmpleadoState> {
  final IEmpleadoRepositorio iEmpleadoRepositorio;
  VerPerfilEmpleadoBloc(this.iEmpleadoRepositorio)
      : super(const VerPerfilEmpleadoState.initial());

  @override
  Stream<VerPerfilEmpleadoState> mapEventToState(
    VerPerfilEmpleadoEvent event,
  ) async* {
    yield const VerPerfilEmpleadoState.cargandoPerfil();
    final Either<EmpleadoExcepcion, Empleado> perfilEmpleadoOExcepcion =
        await iEmpleadoRepositorio.verDatosBasicosEmpleado(event.uuidEmpleado);
    perfilEmpleadoOExcepcion.fold(
        (excepcion) =>
            VerPerfilEmpleadoState.cargaFallidaPerfilEmpleado(excepcion),
        (perfilEmpleado) =>
            VerPerfilEmpleadoState.perfilEmpleadoCargado(perfilEmpleado));
  }
}
