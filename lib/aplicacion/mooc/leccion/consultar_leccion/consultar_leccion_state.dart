part of 'consultar_leccion_bloc.dart';

@freezed
class ConsultarLeccionState with _$ConsultarLeccionState {
  const factory ConsultarLeccionState.inicial() = _Inicial;
  const factory ConsultarLeccionState.verDetalleLeccionEnProgreso() =
      _VerDetalleLeccionEnProgreso;
  const factory ConsultarLeccionState.verDetalleLeccionCargada(
      Leccion leccion) = _VerDetalleLeccionCargada;
  const factory ConsultarLeccionState.verDetalleLeccionFallida(
      MoocExcepcion leccionExcepcion) = _VerDetalleLeccionFallida;
}
