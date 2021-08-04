part of 'consultar_cuestionario_bloc.dart';

@freezed
class ConsultarCuestionarioState with _$ConsultarCuestionarioState {
  const factory ConsultarCuestionarioState.inicial() = _Inicial;
  const factory ConsultarCuestionarioState.cargaEnProgreso() = _CargaEnProgreso;
  const factory ConsultarCuestionarioState.cargaExitosa(
      Cuestionario cuestionario) = _CargaExitosa;
  const factory ConsultarCuestionarioState.cargaFallida(
      MoocExcepcion cuestionarioExcepcion) = _CargaFallida;
}
