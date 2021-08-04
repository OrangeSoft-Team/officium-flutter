part of 'responder_cuestionario_bloc.dart';

@freezed
class ResponderCuestionarioState with _$ResponderCuestionarioState {
  const factory ResponderCuestionarioState.inicial() = _Inicial;
  const factory ResponderCuestionarioState.accionEnProgreso() =
      _AccionEnProgreso;
  const factory ResponderCuestionarioState.cuestionarioRespondido() =
      _CuestionarioRespondido;
  const factory ResponderCuestionarioState.falloResponderCuestionario(
      MoocExcepcion cuestionarioExcepcion) = _FalloResponderCuestionario;
}
