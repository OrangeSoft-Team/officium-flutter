// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuestionario_curso_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CuestionarioCursoDTO _$_$_CuestionarioCursoDTOFromJson(
    Map<String, dynamic> json) {
  return _$_CuestionarioCursoDTO(
    uuid: json['uuid'] as String,
    valorDuracion: json['valorDuracion'] as int,
    escalaDuracion: json['escalaDuracion'] as String,
    intentosPermitidos: json['intentosPermitidos'] as int,
    preguntasCuestionario: (json['preguntasCuestionario'] as List<dynamic>)
        .map((e) => PreguntaCuestionarioDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CuestionarioCursoDTOToJson(
        _$_CuestionarioCursoDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'valorDuracion': instance.valorDuracion,
      'escalaDuracion': instance.escalaDuracion,
      'intentosPermitidos': instance.intentosPermitidos,
      'preguntasCuestionario': instance.preguntasCuestionario,
    };
