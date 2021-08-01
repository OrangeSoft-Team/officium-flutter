import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/core/entidades/experiencia_laboral.dart';
import 'package:officium_flutter/dominio/core/excepciones_dominio/empleado_excepciones.dart';
import 'package:officium_flutter/dominio/core/servicios_dominio/repositorios/i_empleado_repositorio.dart';

part 'consultar_experiencia_laboral_event.dart';
part 'consultar_experiencia_laboral_state.dart';
part 'consultar_experiencia_laboral_bloc.freezed.dart';

class ConsultarExperienciaLaboralBloc extends Bloc<
    ConsultarExperienciaLaboralEvent, ConsultarExperienciaLaboralState> {
  ConsultarExperienciaLaboralBloc(this.iEmpleadoRepositorio)
      : super(const ConsultarExperienciaLaboralState.inicial());

  StreamSubscription<Either<EmpleadoExcepcion, List<ExperienciaLaboral>>>?
      _experienciaLaboralSuscripcion;
  final IEmpleadoRepositorio iEmpleadoRepositorio;
  @override
  Stream<ConsultarExperienciaLaboralState> mapEventToState(
    ConsultarExperienciaLaboralEvent event,
  ) async* {
    yield* event.map(verTodasLasExperienciasLaboralesEmpezado: (e) async* {
      yield const ConsultarExperienciaLaboralState.cargaEnProgreso();
      _experienciaLaboralSuscripcion?.cancel();
      _experienciaLaboralSuscripcion = await iEmpleadoRepositorio
          .verExperienciasLaboralesEmpleado(e.uuidEmpleado)
          .listen((excepcionOExpecienciaLaboral) => add(
              ConsultarExperienciaLaboralEvent.experienciasLaboralesRecibidas(
                  excepcionOExpecienciaLaboral)));
    }, experienciasLaboralesRecibidas: (e) async* {
      yield e.postulacionesOExcepcion.fold(
        (excepciones) =>
            ConsultarExperienciaLaboralState.cargaFallida(excepciones),
        (postulaciones) =>
            ConsultarExperienciaLaboralState.cargaExitosa(postulaciones),
      );
    });
  }

  @override
  Future<void> close() async {
    await _experienciaLaboralSuscripcion?.cancel();
    return super.close();
  }
}
