part of 'cancelar_propuesta_entrevista_bloc.dart';

@freezed
class CancelarPropuestaEntrevistaState with _$CancelarPropuestaEntrevistaState {
  const factory CancelarPropuestaEntrevistaState.inicial() = _Inicial;
  const factory CancelarPropuestaEntrevistaState.accionEnProgreso() =
      _AccionEnProgreso;
  const factory CancelarPropuestaEntrevistaState.cancelarPropuestaEntrevistaExitosa() =
      _CanceladaExitosa;
  const factory CancelarPropuestaEntrevistaState.falloCancelarPropuestaEntrevista(
          ContratacionExcepcion contratacionExcepcion) =
      _FalloCancelarPropuestaEntrevista;
}
