part of 'consultar_experiencia_laboral_bloc.dart';

@freezed
class ConsultarExperienciaLaboralState with _$ConsultarExperienciaLaboralState {
  const factory ConsultarExperienciaLaboralState.inicial() = _Inicial;
  const factory ConsultarExperienciaLaboralState.cargaEnProgreso() =
      _CargaEnProgreso;
  const factory ConsultarExperienciaLaboralState.cargaExitosa(
      List<ExperienciaLaboral> experienciasLaborales) = _CargaExitosa;
  const factory ConsultarExperienciaLaboralState.cargaFallida(
      EmpleadoExcepcion experianciasLaboralesFallidaExcepcion) = _CargaFallida;
}
