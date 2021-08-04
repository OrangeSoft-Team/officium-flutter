part of 'ver_detalle_certificado_empleado_bloc.dart';

@freezed
class VerDetalleCertificadoEmpleadoState
    with _$VerDetalleCertificadoEmpleadoState {
  const factory VerDetalleCertificadoEmpleadoState.inicial() = _Inicial;
  const factory VerDetalleCertificadoEmpleadoState.verDetalleCertificadoEnProgreso() =
      _VerDetalleCertificadoEnProgreso;
  const factory VerDetalleCertificadoEmpleadoState.verDetalleCertificadoCargada(
      Certificado certificado) = _VerDetalleCertificadoCargada;
  const factory VerDetalleCertificadoEmpleadoState.verDetalleCertificadoFallida(
      MoocExcepcion certificadoExcepcion) = _VerDetalleCertificadoFallida;
}
