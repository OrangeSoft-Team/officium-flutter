import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/certificado.dart';
import 'package:officium_flutter/dominio/mooc/excepciones_dominio/mooc_excepciones.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/repositorios/i_mooc_repositorio.dart';

part 'ver_detalle_certificado_empleado_event.dart';
part 'ver_detalle_certificado_empleado_state.dart';
part 'ver_detalle_certificado_empleado_bloc.freezed.dart';

class VerDetalleCertificadoEmpleadoBloc extends Bloc<
    VerDetalleCertificadoEmpleadoEvent, VerDetalleCertificadoEmpleadoState> {
  VerDetalleCertificadoEmpleadoBloc(this._iMoocRepositorio)
      : super(const VerDetalleCertificadoEmpleadoState.inicial());
  final IMoocRepositorio _iMoocRepositorio;
  @override
  Stream<VerDetalleCertificadoEmpleadoState> mapEventToState(
    VerDetalleCertificadoEmpleadoEvent event,
  ) async* {
    yield const VerDetalleCertificadoEmpleadoState
        .verDetalleCertificadoEnProgreso();
    final Either<MoocExcepcion, Certificado> _certificadoOExcepcion =
        await _iMoocRepositorio.verDetalleCertificado(event.uuidCertificado);
    _certificadoOExcepcion.fold(
        (certificadoExcepcion) =>
            VerDetalleCertificadoEmpleadoState.verDetalleCertificadoFallida(
                certificadoExcepcion),
        (certificado) =>
            VerDetalleCertificadoEmpleadoState.verDetalleCertificadoCargada(
                certificado));
  }
}
