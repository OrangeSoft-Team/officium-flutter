// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leccion_curso_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeccionCursoDTO _$_$_LeccionCursoDTOFromJson(Map<String, dynamic> json) {
  return _$_LeccionCursoDTO(
    uuid: json['uuid'] as String,
    titulo: json['titulo'] as String,
    descripcion: json['descripcion'] as String,
    contenido: json['contenido'] as String,
  );
}

Map<String, dynamic> _$_$_LeccionCursoDTOToJson(_$_LeccionCursoDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'titulo': instance.titulo,
      'descripcion': instance.descripcion,
      'contenido': instance.contenido,
    };
