part of 'ver_todas_postulaciones_oferta_laboral_bloc.dart';

@freezed
class VerTodasPostulacionesOfertaLaboralEvent
    with _$VerTodasPostulacionesOfertaLaboralEvent {
  const factory VerTodasPostulacionesOfertaLaboralEvent.verTodasLasPostulacionesEmpezado(
      Identificador uuidEmpleado) = _VerTodasLasPostulacionesEmpezado;

  const factory VerTodasPostulacionesOfertaLaboralEvent.postulacionesRecibidas(
      Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
          postulacionesOExcepcion) = _PostulacionesRecibidas;
}
