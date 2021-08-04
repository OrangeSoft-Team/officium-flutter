part of 'consultar_cuestionario_bloc.dart';

@freezed
class ConsultarCuestionarioEvent with _$ConsultarCuestionarioEvent {
  const factory ConsultarCuestionarioEvent.consultarCuestionario(
      Identificador uuidCurso) = _ConsultarCuestionario;
}
