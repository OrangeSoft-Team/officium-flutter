part of 'ver_todos_los_cursos_bloc.dart';

@freezed
class VerTodosLosCursosState with _$VerTodosLosCursosState {
  const factory VerTodosLosCursosState.inicial() = _Inicial;
  const factory VerTodosLosCursosState.cargaEnProgreso() = _CargaEnProgreso;
  const factory VerTodosLosCursosState.cargaExitosa(List<Curso> cursos) =
      _CargaExitosa;
  const factory VerTodosLosCursosState.cargaFallida(
      MoocExcepcion cursoExcepcion) = _CargaFallida;
}
