import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/certificado.dart';
import 'package:officium_flutter/dominio/mooc/excepciones_dominio/mooc_excepciones.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/repositorios/i_mooc_repositorio.dart';

part 'ver_todos_los_certificados_empleado_event.dart';
part 'ver_todos_los_certificados_empleado_state.dart';
part 'ver_todos_los_certificados_empleado_bloc.freezed.dart';

class VerTodosLosCertificadosEmpleadoBloc extends Bloc<
    VerTodosLosCertificadosEmpleadoEvent,
    VerTodosLosCertificadosEmpleadoState> {
  VerTodosLosCertificadosEmpleadoBloc(this._iMoocRepositorio)
      : super(const VerTodosLosCertificadosEmpleadoState.inicial());
  final IMoocRepositorio _iMoocRepositorio;

  StreamSubscription<Either<MoocExcepcion, List<Certificado>>>?
      _listaCertificadosEmpleadosSuscripcion;

  @override
  Stream<VerTodosLosCertificadosEmpleadoState> mapEventToState(
    VerTodosLosCertificadosEmpleadoEvent event,
  ) async* {
    yield* event.map(verTodosLosCertificadosEmpleadoComenzado: (e) async* {
      yield const VerTodosLosCertificadosEmpleadoState.cargaEnProgreso();
      _listaCertificadosEmpleadosSuscripcion?.cancel();
      _listaCertificadosEmpleadosSuscripcion = _iMoocRepositorio
          .verTodosLosCertificadosEmpleado(e.uuidEmpleado)
          .listen((entrevistasOExcepcion) => add(
              VerTodosLosCertificadosEmpleadoEvent.certificadosRecibidos(
                  entrevistasOExcepcion)));
    }, certificadosRecibidos: (e) async* {
      yield e.entrevistasOExcepcion.fold(
          (certificadosFacillosExcepcion) =>
              VerTodosLosCertificadosEmpleadoState.cargaFallida(
                  certificadosFacillosExcepcion),
          (certificados) =>
              VerTodosLosCertificadosEmpleadoState.cargaExitosa(certificados));
    });
  }

  @override
  Future<void> close() async {
    await _listaCertificadosEmpleadosSuscripcion?.cancel();
    return super.close();
  }
}
