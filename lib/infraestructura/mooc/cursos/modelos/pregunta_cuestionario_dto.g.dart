// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pregunta_cuestionario_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreguntaCuestionarioDTO _$_$_PreguntaCuestionarioDTOFromJson(
    Map<String, dynamic> json) {
  return _$_PreguntaCuestionarioDTO(
    uuid: json['uuid'] as String,
    opciones: (json['opciones'] as List<dynamic>?)
        ?.map((e) => OpcionPreguntaDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_PreguntaCuestionarioDTOToJson(
        _$_PreguntaCuestionarioDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'opciones': instance.opciones,
    };
