part of 'ver_ofertas_laborales_bloc.dart';

@freezed
class VerOfertasLaboralesState with _$VerOfertasLaboralesState {
  const factory VerOfertasLaboralesState.inicial() = _Inicial;
  const factory VerOfertasLaboralesState.cargaEnProgreso() = _CargaEnProgreso;
  const factory VerOfertasLaboralesState.cargaExitosa(
      List<OfertaLaboral> ofertasLaborales) = _CargaExitosa;
  const factory VerOfertasLaboralesState.cargaFallida(
      ContratacionExcepcion ofertaLaboralExcepcion) = _CargaFallida;
}
