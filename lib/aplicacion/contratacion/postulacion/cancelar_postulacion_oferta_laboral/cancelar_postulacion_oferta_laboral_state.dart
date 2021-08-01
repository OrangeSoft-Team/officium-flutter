part of 'cancelar_postulacion_oferta_laboral_bloc.dart';

@freezed
class CancelarPostulacionOfertaLaboralState
    with _$CancelarPostulacionOfertaLaboralState {
  const factory CancelarPostulacionOfertaLaboralState.initial() = _Initial;
  const factory CancelarPostulacionOfertaLaboralState.accionEnProgreso() =
      _AccionEnProgreso;
  const factory CancelarPostulacionOfertaLaboralState.canceladaExitosa() =
      _CanceladaExitosa;
  const factory CancelarPostulacionOfertaLaboralState.falloCancelarPostulacion(
      ContratacionExcepcion contratacionExcepcion) = _FalloCancelarPostulacion;
}
