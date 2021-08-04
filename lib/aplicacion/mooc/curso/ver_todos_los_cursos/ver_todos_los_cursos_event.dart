part of 'ver_todos_los_cursos_bloc.dart';

@freezed
class VerTodosLosCursosEvent with _$VerTodosLosCursosEvent {
  const factory VerTodosLosCursosEvent.verTodosLosCursosEmpezado() =
      _VerTodosLosCursosEmpezado;

  const factory VerTodosLosCursosEvent.cursosRecibidas(
      Either<MoocExcepcion, List<Curso>> cursosOExcepciones) = _CursosRecibidCs;
}
