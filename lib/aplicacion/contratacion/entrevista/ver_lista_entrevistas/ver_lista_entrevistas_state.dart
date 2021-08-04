part of 'ver_lista_entrevistas_bloc.dart';

@freezed
class VerListaEntrevistasState with _$VerListaEntrevistasState {
  const factory VerListaEntrevistasState.inicial() = _Inicial;
  const factory VerListaEntrevistasState.cargaEnProgreso() = _CargaEnProgreso;
  const factory VerListaEntrevistasState.cargaExitosa(
      List<Entrevista> entrevistas) = _CargaExitosa;
  const factory VerListaEntrevistasState.cargaFallida(
      ContratacionExcepcion entrevistaFallidaExcepcion) = _CargaFallida;
}
