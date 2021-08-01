import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/core/entidades/experiencia_laboral.dart';
import 'package:officium_flutter/dominio/core/excepciones_dominio/empleado_excepciones.dart';
import 'package:officium_flutter/dominio/core/servicios_dominio/repositorios/i_empleado_repositorio.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';

part 'experiencia_laboral_formulario_event.dart';
part 'experiencia_laboral_formulario_state.dart';
part 'crear_experiencia_laboral_bloc.freezed.dart';

class CrearExperienciaLaboralBloc
    extends Bloc<CrearExperienciaLaboralEvent, CrearExperienciaLaboralState> {
  final IEmpleadoRepositorio iEmpleadoRepositorio;
  CrearExperienciaLaboralBloc(this.iEmpleadoRepositorio)
      : super(CrearExperienciaLaboralState.inicial());

  @override
  Stream<CrearExperienciaLaboralState> mapEventToState(
    CrearExperienciaLaboralEvent event,
  ) async* {
    yield* event.map(inicializado: (e) async* {
      e.inicialOpcionExperienciaLaboral.fold(
          () => state,
          (experienciaLaboralInicial) => state.copyWith(
                experienciaLaboral: experienciaLaboralInicial,
                estaActualizando: true,
              ));
    }, cargoCambiado: (e) async* {
      yield state.copyWith(
          experienciaLaboral:
              state.experienciaLaboral.copyWith(cargo: Cargo(e.cargoString)));
    }, nombreEmpresaCambiado: (e) async* {
      yield state.copyWith(
          experienciaLaboral: state.experienciaLaboral
              .copyWith(nombreEmpresa: NombreEmpresa(e.nombreEmpresaString)));
    }, fechaInicialCambiada: (e) async* {
      yield state.copyWith(
          experienciaLaboral: state.experienciaLaboral
              .copyWith(fechaInicio: Fecha(e.fechaInicial)));
    }, guardado: (e) async* {
      Either<EmpleadoExcepcion, Unit>? falloOExito;
      yield state.copyWith(
        estaGuardando: true,
        guardadoFallidoOExitosoOpcion: none(),
      );

      if (state.experienciaLaboral.opcionFallo.isNone()) {
        falloOExito = state.estaActualizando
            ? await iEmpleadoRepositorio
                .actualizarExperienciaLaboral(state.experienciaLaboral)
            : await iEmpleadoRepositorio
                .crearExperienciaLaboral(state.experienciaLaboral);
      }

      yield state.copyWith(
        estaGuardando: false,
        mostrarMensajesError: true,
        guardadoFallidoOExitosoOpcion: optionOf(falloOExito),
      );
    });
    // TODO: implement mapEventToState
  }
}
