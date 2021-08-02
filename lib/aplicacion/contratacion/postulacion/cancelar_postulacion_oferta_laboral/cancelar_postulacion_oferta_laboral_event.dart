part of 'cancelar_postulacion_oferta_laboral_bloc.dart';

@freezed
class CancelarPostulacionOfertaLaboralEvent
    with _$CancelarPostulacionOfertaLaboralEvent {
  const factory CancelarPostulacionOfertaLaboralEvent.postulacionCancelada(
      Identificador uuidPostulacionOfertaLabioral) = _PostulacionCancelada;
}