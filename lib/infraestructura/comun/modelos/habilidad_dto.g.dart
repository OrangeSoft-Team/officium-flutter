// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habilidad_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HabilidadDTO _$_$_HabilidadDTOFromJson(Map<String, dynamic> json) {
  return _$_HabilidadDTO(
    uuid: json['uuid'] as String,
    nombre: json['nombre'] as String,
    categoria: json['categoria'] as String,
  );
}

Map<String, dynamic> _$_$_HabilidadDTOToJson(_$_HabilidadDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'nombre': instance.nombre,
      'categoria': instance.categoria,
    };
