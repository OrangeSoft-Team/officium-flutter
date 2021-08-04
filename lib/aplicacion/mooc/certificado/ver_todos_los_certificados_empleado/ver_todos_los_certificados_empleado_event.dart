part of 'ver_todos_los_certificados_empleado_bloc.dart';

@freezed
class VerTodosLosCertificadosEmpleadoEvent
    with _$VerTodosLosCertificadosEmpleadoEvent {
  const factory VerTodosLosCertificadosEmpleadoEvent.verTodosLosCertificadosEmpleadoComenzado(
      Identificador uuidEmpleado) = _verTodosLosCertificadosEmpleadoComenzado;

  const factory VerTodosLosCertificadosEmpleadoEvent.certificadosRecibidos(
          Either<MoocExcepcion, List<Certificado>> entrevistasOExcepcion) =
      _CertificadosRecibidos;
}
