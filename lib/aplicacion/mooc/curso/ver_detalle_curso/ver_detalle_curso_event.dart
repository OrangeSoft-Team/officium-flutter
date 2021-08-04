part of 'ver_detalle_curso_bloc.dart';

@freezed
class VerDetalleCursoEvent with _$VerDetalleCursoEvent {
  const factory VerDetalleCursoEvent.verDetalleCursoEmpezado(
      Identificador uuidCurso) = _VerDetalleCursoEmpezado;
}
