part of 'ver_todos_los_certificados_empleado_bloc.dart';

@freezed
class VerTodosLosCertificadosEmpleadoState
    with _$VerTodosLosCertificadosEmpleadoState {
  const factory VerTodosLosCertificadosEmpleadoState.inicial() = _Inicial;
  const factory VerTodosLosCertificadosEmpleadoState.cargaEnProgreso() =
      _CargaEnProgreso;
  const factory VerTodosLosCertificadosEmpleadoState.cargaExitosa(
      List<Certificado> certificados) = _CargaExitosa;
  const factory VerTodosLosCertificadosEmpleadoState.cargaFallida(
      MoocExcepcion certificadosFacillosExcepcion) = _CargaFallida;
}
