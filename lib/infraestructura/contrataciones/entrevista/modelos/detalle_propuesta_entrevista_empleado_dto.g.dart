// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalle_propuesta_entrevista_empleado_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetallePropuestaEntrevistaEmpleadoDTO
    _$_$_DetallePropuestaEntrevistaEmpleadoDTOFromJson(
        Map<String, dynamic> json) {
  return _$_DetallePropuestaEntrevistaEmpleadoDTO(
    uuid: json['uuid'] as String,
    fechaPautada: json['fechaPautada'] as String,
    asunto: json['asunto'] as String,
    estatus: json['estatus'] as String,
    vinculo: json['vinculo'] as String?,
  );
}

Map<String, dynamic> _$_$_DetallePropuestaEntrevistaEmpleadoDTOToJson(
        _$_DetallePropuestaEntrevistaEmpleadoDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'fechaPautada': instance.fechaPautada,
      'asunto': instance.asunto,
      'estatus': instance.estatus,
      'vinculo': instance.vinculo,
    };
