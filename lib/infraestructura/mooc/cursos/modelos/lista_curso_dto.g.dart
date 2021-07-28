// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_curso_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListaCursoDTO _$_$_ListaCursoDTOFromJson(Map<String, dynamic> json) {
  return _$_ListaCursoDTO(
    uuid: json['uuid'] as String,
    titulo: json['titulo'] as String,
    estatus: json['estatus'] as String,
    fechaCreacion: json['fechaCreacion'] as String,
  );
}

Map<String, dynamic> _$_$_ListaCursoDTOToJson(_$_ListaCursoDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'titulo': instance.titulo,
      'estatus': instance.estatus,
      'fechaCreacion': instance.fechaCreacion,
    };
