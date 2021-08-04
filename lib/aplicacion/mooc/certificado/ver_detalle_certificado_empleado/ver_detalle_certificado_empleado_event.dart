part of 'ver_detalle_certificado_empleado_bloc.dart';

@freezed
class VerDetalleCertificadoEmpleadoEvent
    with _$VerDetalleCertificadoEmpleadoEvent {
  const factory VerDetalleCertificadoEmpleadoEvent.verDetalleCertificadoEmpezado(
      Identificador uuidCertificado) = _VerDetalleCertificadoEmpezado;
}
