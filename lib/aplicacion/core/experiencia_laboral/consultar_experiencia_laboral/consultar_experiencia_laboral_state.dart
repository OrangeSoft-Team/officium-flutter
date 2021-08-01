part of 'consultar_experiencia_laboral_bloc.dart';

@freezed
class ConsultarExperienciaLaboralState with _$ConsultarExperienciaLaboralState {
  const factory ConsultarExperienciaLaboralState.inicial() = _Inicial;
  const factory ConsultarExperienciaLaboralState.cargaEnProgreso() =
      _CargaEnProgreso;
  const factory ConsultarExperienciaLaboralState.cargaExitosa(
      List<ExperienciaLaboral> postulaciones) = _CargaExitosa;
  const factory ConsultarExperienciaLaboralState.cargaFallida(
      EmpleadoExcepcion postulacionFacilladaExcepcion) = _CargaFallida;
}
