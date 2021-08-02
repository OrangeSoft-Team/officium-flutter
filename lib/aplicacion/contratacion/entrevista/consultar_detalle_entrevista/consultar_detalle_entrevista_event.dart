part of 'consultar_detalle_entrevista_bloc.dart';

@freezed
class ConsultarDetalleEntrevistaEvent with _$ConsultarDetalleEntrevistaEvent {
  const factory ConsultarDetalleEntrevistaEvent.consultarDetalleEntrevistaComenzado(
      Identificador uuidEntrevista) = _ConsultarDetalleEntrevistaComenzado;
}
