part of 'confirmar_propuesta_entrevista_bloc.dart';

@freezed
class ConfirmarPropuestaEntrevistaEvent
    with _$ConfirmarPropuestaEntrevistaEvent {
  const factory ConfirmarPropuestaEntrevistaEvent.entrevistaConfirmada(
      Identificador uuidPostulacionOfertaLabioral) = _EntrevistaConfirmada;
}
