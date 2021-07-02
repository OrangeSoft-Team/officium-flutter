part of 'ver_detalle_oferta_laboral_bloc.dart';

@freezed
class VerDetalleOfertaLaboralState with _$VerDetalleOfertaLaboralState {
  const factory VerDetalleOfertaLaboralState.inicial() = _Inicial;
  const factory VerDetalleOfertaLaboralState.verDetalleOfertaLaboralEnProgreso() =
      _VerDetalleOfertaLaboralEnProgreso;
  const factory VerDetalleOfertaLaboralState.verDetalleOfertaLaboralCargada(
      OfertaLaboral ofertaLaboral) = _verDetalleOfertaLaboralCargada;
  const factory VerDetalleOfertaLaboralState.verDetalleOfertaLaboralFallida(
          OfertaLaboralExcepcion ofertaLaboralExcepcion) =
      _verDetalleOfertaLaboralFallida;
}
