part of 'ver_detalle_oferta_laboral_bloc.dart';

@freezed
class VerDetalleOfertaLaboralEvent with _$VerDetalleOfertaLaboralEvent {
  const factory VerDetalleOfertaLaboralEvent.verDetalleOfertaLaboralEmpezado(
      Identificador uuidOfertaLaboral) = _VerDetalleOfertaLaboralEmpezado;
}
