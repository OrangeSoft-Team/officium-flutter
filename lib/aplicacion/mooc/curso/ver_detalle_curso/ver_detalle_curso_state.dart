part of 'ver_detalle_curso_bloc.dart';

@freezed
class VerDetalleCursoState with _$VerDetalleCursoState {
  const factory VerDetalleCursoState.inicial() = _Inicial;
  const factory VerDetalleCursoState.verDetalleCursoEnProgreso() =
      _VerDetalleCursoEnProgreso;
  const factory VerDetalleCursoState.verDetalleCursoCargada(Curso curso) =
      _VerDetalleCursoCargada;
  const factory VerDetalleCursoState.verDetalleCursoFallida(
      MoocExcepcion cursoExcepcion) = _VerDetalleCursoFallida;
}
