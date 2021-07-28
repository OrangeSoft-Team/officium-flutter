import 'package:freezed_annotation/freezed_annotation.dart';
part 'respuestas_cuestionario_dto.freezed.dart';
part 'respuestas_cuestionario_dto.g.dart';

@freezed
abstract class RespuestasCuestionarioDTO implements _$RespuestasCuestionarioDTO {
  const RespuestasCuestionarioDTO._();
  factory RespuestasCuestionarioDTO({
    required String uuidPregunta,
    required String uuidOpcion
  }) = _RespuestasCuestionarioDTO;

  factory RespuestasCuestionarioDTO.fromJson(Map<String, dynamic> json) =>
    _$RespuestasCuestionarioDTOFromJson(json);
  
  /*factory RespuestasCuestionarioDTO.fromDomain(LeccionCurso LeccionCurso) {
    return RespuestasCuestionarioDTO(
     
    );
  }*/

  /*LeccionCurso toDomain() {
    return LeccionCurso(
     
    );
  }*/
}