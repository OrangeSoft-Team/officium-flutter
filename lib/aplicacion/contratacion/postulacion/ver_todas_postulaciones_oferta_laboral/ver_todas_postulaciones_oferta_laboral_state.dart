part of 'ver_todas_postulaciones_oferta_laboral_bloc.dart';

@freezed
class VerTodasPostulacionesOfertaLaboralState
    with _$VerTodasPostulacionesOfertaLaboralState {
  const factory VerTodasPostulacionesOfertaLaboralState.inicial() = _Inicial;
  const factory VerTodasPostulacionesOfertaLaboralState.cargaEnProgreso() =
      _CargaEnProgreso;
  const factory VerTodasPostulacionesOfertaLaboralState.cargaExitosa(
      List<PostulacionOfertaLaboral> postulaciones) = _CargaExitosa;
  const factory VerTodasPostulacionesOfertaLaboralState.cargaFallida(
      ContratacionExcepcion postulacionFacilladaExcepcion) = _CargaFallida;
}
