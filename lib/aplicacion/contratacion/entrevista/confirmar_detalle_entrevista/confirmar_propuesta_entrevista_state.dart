part of 'confirmar_propuesta_entrevista_bloc.dart';

@freezed
class ConfirmarPropuestaEntrevistaState
    with _$ConfirmarPropuestaEntrevistaState {
  const factory ConfirmarPropuestaEntrevistaState.inicial() = _Inicial;
  const factory ConfirmarPropuestaEntrevistaState.accionEnProgreso() =
      _AccionEnProgreso;
  const factory ConfirmarPropuestaEntrevistaState.confirmadaExitosa() =
      _CanceladaExitosa;
  const factory ConfirmarPropuestaEntrevistaState.falloConfirmarPropuestaEntrevista(
          ContratacionExcepcion contratacionExcepcion) =
      _FalloConfirmarPropuestaEntrevista;
}
