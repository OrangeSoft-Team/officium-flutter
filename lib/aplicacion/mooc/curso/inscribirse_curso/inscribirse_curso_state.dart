part of 'inscribirse_curso_bloc.dart';

@freezed
class InscribirseCursoState with _$InscribirseCursoState {
  const factory InscribirseCursoState.inicial() = _Inicial;
  const factory InscribirseCursoState.accionEnProgreso() =
      _AccionEnProgreso;
  const factory InscribirseCursoState.inscripcionCursoExitosa() =
      _InscripcionCursoExitosa;
  const factory InscribirseCursoState.falloInscripcionCurso(
          MoocExcepcion inscripcionCursoExcepcion) =
      _FalloInscripcionCurso;}
