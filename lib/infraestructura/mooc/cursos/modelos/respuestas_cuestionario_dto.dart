import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/mooc/entidades/respuesta_cuestionario.dart';
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
  
  factory RespuestasCuestionarioDTO.fromDomain(RespuestaCuestionario respuesta) {
    return RespuestasCuestionarioDTO(
     uuidPregunta: respuesta.uuid.getOrCrash(),
     uuidOpcion: respuesta.uuidOpcionPregunta.getOrCrash(),
    );
  }
}