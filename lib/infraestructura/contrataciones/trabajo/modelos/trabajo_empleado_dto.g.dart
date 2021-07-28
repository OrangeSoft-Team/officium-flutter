// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trabajo_empleado_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrabajoEmpleadoDTO _$_$_TrabajoEmpleadoDTOFromJson(
    Map<String, dynamic> json) {
  return _$_TrabajoEmpleadoDTO(
    uuid: json['uuid'] as String,
    titulo: json['titulo'] as String,
    fechaInicioTrabajo: json['fechaInicioTrabajo'] as String,
    cargo: json['cargo'] as String,
    nombreEmpresa: json['nombreEmpresa'] as String,
    estatus: json['estatus'] as String,
  );
}

Map<String, dynamic> _$_$_TrabajoEmpleadoDTOToJson(
        _$_TrabajoEmpleadoDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'titulo': instance.titulo,
      'fechaInicioTrabajo': instance.fechaInicioTrabajo,
      'cargo': instance.cargo,
      'nombreEmpresa': instance.nombreEmpresa,
      'estatus': instance.estatus,
    };
