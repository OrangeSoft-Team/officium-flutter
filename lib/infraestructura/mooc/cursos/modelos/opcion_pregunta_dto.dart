import 'package:freezed_annotation/freezed_annotation.dart';
part 'opcion_pregunta_dto.freezed.dart';
part 'opcion_pregunta_dto.g.dart';

@freezed
abstract class OpcionPreguntaDTO implements _$OpcionPreguntaDTO {
  const OpcionPreguntaDTO._();
  factory OpcionPreguntaDTO({
    required String uuid,
  }) = _OpcionPreguntaDTO;

  factory OpcionPreguntaDTO.fromJson(Map<String, dynamic> json) =>
      _$OpcionPreguntaDTOFromJson(json);
  
  /*factory OpcionPreguntaDTO.fromDomain(OpcionPregunta cuestionario) {
    return OpcionPreguntaDTO(
     
    );
  }*/

  /*OpcionPregunta toDomain() {
    return OpcionPregunta(
     
    );
  }*/
}