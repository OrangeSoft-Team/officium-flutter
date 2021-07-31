import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ver_detalle_certificado_empleado_event.dart';
part 'ver_detalle_certificado_empleado_state.dart';
part 'ver_detalle_certificado_empleado_bloc.freezed.dart';

class VerDetalleCertificadoEmpleadoBloc extends Bloc<VerDetalleCertificadoEmpleadoEvent, VerDetalleCertificadoEmpleadoState> {
  VerDetalleCertificadoEmpleadoBloc() : super(_Initial());

  @override
  Stream<VerDetalleCertificadoEmpleadoState> mapEventToState(
    VerDetalleCertificadoEmpleadoEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
