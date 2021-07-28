import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/opcion_pregunta_dto.dart';
part 'pregunta_cuestionario_dto.freezed.dart';
part 'pregunta_cuestionario_dto.g.dart';

@freezed
abstract class PreguntaCuestionarioDTO implements _$PreguntaCuestionarioDTO {
  const PreguntaCuestionarioDTO._();
  factory PreguntaCuestionarioDTO({
    required String uuid,
    List<OpcionPreguntaDTO>? opciones,
  }) = _PreguntaCuestionarioDTO;

  factory PreguntaCuestionarioDTO.fromJson(Map<String, dynamic> json) =>
      _$PreguntaCuestionarioDTOFromJson(json);
  
  /*factory PreguntaCuestionarioDTO.fromDomain(PreguntaCuestionario cuestionario) {
    return PreguntaCuestionarioDTO(
     
    );
  }*/

  /*PreguntaCuestionario toDomain() {
    return PreguntaCuestionario(
     
    );
  }*/
}