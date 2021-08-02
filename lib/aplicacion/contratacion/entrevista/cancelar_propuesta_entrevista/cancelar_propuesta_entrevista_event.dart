part of 'cancelar_propuesta_entrevista_bloc.dart';

@freezed
class CancelarPropuestaEntrevistaEvent with _$CancelarPropuestaEntrevistaEvent {
  const factory CancelarPropuestaEntrevistaEvent.entrevistaCancelada(
      Identificador uuidPostulacionOfertaLabioral) = _EntrevistaCancelada;
}
