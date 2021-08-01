import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';

part 'ver_todas_postulaciones_oferta_laboral_event.dart';
part 'ver_todas_postulaciones_oferta_laboral_state.dart';
part 'ver_todas_postulaciones_oferta_laboral_bloc.freezed.dart';

class VerTodasPostulacionesOfertaLaboralBloc extends Bloc<
    VerTodasPostulacionesOfertaLaboralEvent,
    VerTodasPostulacionesOfertaLaboralState> {
  final IContratacionesRepositorio _iContratacionesRepositorio;

  VerTodasPostulacionesOfertaLaboralBloc(this._iContratacionesRepositorio)
      : super(const VerTodasPostulacionesOfertaLaboralState.inicial());

  StreamSubscription<
          Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>>?
      _postulacionOfertaLaboralSuscripcion;

  @override
  Stream<VerTodasPostulacionesOfertaLaboralState> mapEventToState(
    VerTodasPostulacionesOfertaLaboralEvent event,
  ) async* {
    yield* event.map(
      verTodasLasPostulacionesEmpezado: (e) async* {
        yield const VerTodasPostulacionesOfertaLaboralState.cargaEnProgreso();
        _postulacionOfertaLaboralSuscripcion?.cancel();
        _postulacionOfertaLaboralSuscripcion = _iContratacionesRepositorio
            .verTodasLasPostulacionesOfertaLaboral(e.uuidEmpleado)
            .listen((postulacionesOExcepciones) => add(
                VerTodasPostulacionesOfertaLaboralEvent.postulacionesRecibidas(
                    postulacionesOExcepciones)));
      },
      postulacionesRecibidas: (e) async* {
        yield e.postulacionesOExcepcion.fold(
            (excepciones) =>
                VerTodasPostulacionesOfertaLaboralState.cargaFallida(
                    excepciones),
            (postulaciones) =>
                VerTodasPostulacionesOfertaLaboralState.cargaExitosa(
                    postulaciones));
      },
    );
  }

  @override
  Future<void> close() async {
    await _postulacionOfertaLaboralSuscripcion?.cancel();
    return super.close();
  }
}
