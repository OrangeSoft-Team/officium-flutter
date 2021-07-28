// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalle_curso_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetalleCursoDTO _$_$_DetalleCursoDTOFromJson(Map<String, dynamic> json) {
  return _$_DetalleCursoDTO(
    uuid: json['uuid'] as String,
    titulo: json['titulo'] as String,
    estatus: json['estatus'] as String,
    valorDuracion: json['valorDuracion'] as int,
    escalaDuracion: json['escalaDuracion'] as String,
    fechaCreacion: json['fechaCreacion'] as String,
    lecciones: (json['lecciones'] as List<dynamic>)
        .map((e) => LeccionListaDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    habilidades:
        (json['habilidades'] as List<dynamic>).map((e) => e as String).toList(),
    descripcion: json['descripcion'] as String,
    fechaUltimaModificacion: json['fechaUltimaModificacion'] as String?,
  );
}

Map<String, dynamic> _$_$_DetalleCursoDTOToJson(_$_DetalleCursoDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'titulo': instance.titulo,
      'estatus': instance.estatus,
      'valorDuracion': instance.valorDuracion,
      'escalaDuracion': instance.escalaDuracion,
      'fechaCreacion': instance.fechaCreacion,
      'lecciones': instance.lecciones,
      'habilidades': instance.habilidades,
      'descripcion': instance.descripcion,
      'fechaUltimaModificacion': instance.fechaUltimaModificacion,
    };
