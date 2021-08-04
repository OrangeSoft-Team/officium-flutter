part of 'responder_cuestionario_bloc.dart';

@freezed
class ResponderCuestionarioEvent with _$ResponderCuestionarioEvent {
  const factory ResponderCuestionarioEvent.cuestionarioRespondidoEmpezado(
          Identificador uuidCuestionario,
          Identificador uuidCurso,
          List<RespuestaCuestionario> respuestasCuestionario) =
      _CuestionarioRespondidoEmpezado;
}
