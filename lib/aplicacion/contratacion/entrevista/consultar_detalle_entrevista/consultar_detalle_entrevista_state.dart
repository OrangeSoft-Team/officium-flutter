part of 'consultar_detalle_entrevista_bloc.dart';

@freezed
class ConsultarDetalleEntrevistaState with _$ConsultarDetalleEntrevistaState {
  const factory ConsultarDetalleEntrevistaState.inicial() = _Inicial;
  const factory ConsultarDetalleEntrevistaState.verDetalleEntrevistaEnProgreso() =
      _VerDetalleEntrevistaEnProgreso;
  const factory ConsultarDetalleEntrevistaState.verDetalleEntrevistaCargada(
      Entrevista entrevista) = _VerDetalleEntrevistaCargada;
  const factory ConsultarDetalleEntrevistaState.verDetalleEntrevistaFallida(
      ContratacionExcepcion entrevistaExcepcion) = _VerDetalleEntrevistaFallida;
}
