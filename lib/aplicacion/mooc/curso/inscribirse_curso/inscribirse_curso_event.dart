part of 'inscribirse_curso_bloc.dart';

@freezed
class InscribirseCursoEvent with _$InscribirseCursoEvent {
  const factory InscribirseCursoEvent.inscripcionCursoRealizada(
      Identificador uuidCurso) = _InscripcionCursoRealizada;
}
