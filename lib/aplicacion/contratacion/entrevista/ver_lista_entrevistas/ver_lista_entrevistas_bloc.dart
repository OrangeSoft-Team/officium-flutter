import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/entrevista.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';

part 'ver_lista_entrevistas_event.dart';
part 'ver_lista_entrevistas_state.dart';
part 'ver_lista_entrevistas_bloc.freezed.dart';

class VerListaEntrevistasBloc
    extends Bloc<VerListaEntrevistasEvent, VerListaEntrevistasState> {
  VerListaEntrevistasBloc(this._iContratacionesRepositorio)
      : super(const VerListaEntrevistasState.inicial());
  final IContratacionesRepositorio _iContratacionesRepositorio;

  StreamSubscription<Either<ContratacionExcepcion, List<Entrevista>>>?
      _listaDeEntrevistasEmpleadoSuscripcion;

  @override
  Stream<VerListaEntrevistasState> mapEventToState(
    VerListaEntrevistasEvent event,
  ) async* {
    yield* event.map(
      verTodasLasEntrevistasEmpezado: (e) async* {
        yield const VerListaEntrevistasState.cargaEnProgreso();
        await _listaDeEntrevistasEmpleadoSuscripcion?.cancel();
        _listaDeEntrevistasEmpleadoSuscripcion = _iContratacionesRepositorio
            .verTodasLasEntrevistasEmpleado(e.uuidEmpleado)
            .listen((entrevistaOExcepcion) => add(
                VerListaEntrevistasEvent.entrevistasRecibidas(
                    entrevistaOExcepcion)));
      },
      entrevistasRecibidas: (e) async* {
        yield e.entrevistasOExcepcion.fold(
            (postulacionFacilladaExcepcion) =>
                VerListaEntrevistasState.cargaFallida(
                    postulacionFacilladaExcepcion),
            (postulaciones) =>
                VerListaEntrevistasState.cargaExitosa(postulaciones));
      },
    );
  }

  @override
  Future<void> close() async {
    await _listaDeEntrevistasEmpleadoSuscripcion?.cancel();
    return super.close();
  }
}
