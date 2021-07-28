// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalle_trabajo_empleado_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetalleTrabajoEmpleadoDTO _$_$_DetalleTrabajoEmpleadoDTOFromJson(
    Map<String, dynamic> json) {
  return _$_DetalleTrabajoEmpleadoDTO(
    uuid: json['uuid'] as String,
    titulo: json['titulo'] as String,
    cargo: json['cargo'] as String,
    uuidEmpresa: json['uuidEmpresa'] as String,
    nombreEmpresa: json['nombreEmpresa'] as String,
    direccionEmpresa: json['direccionEmpresa'] as String,
    numeroTelefonicos: (json['numeroTelefonicos'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    sueldo: (json['sueldo'] as num).toDouble(),
    descripcion: json['descripcion'] as String,
    valorDuracion: json['valorDuracion'] as int,
    escalaDuracion: json['escalaDuracion'] as String,
    turnoTrabajo: json['turnoTrabajo'] as String,
    fechaInicioTrabajo: json['fechaInicioTrabajo'] as String,
    fechaCulminacionTrabajo: json['fechaCulminacionTrabajo'] as String?,
    estatus: json['estatus'] as String,
  );
}

Map<String, dynamic> _$_$_DetalleTrabajoEmpleadoDTOToJson(
        _$_DetalleTrabajoEmpleadoDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'titulo': instance.titulo,
      'cargo': instance.cargo,
      'uuidEmpresa': instance.uuidEmpresa,
      'nombreEmpresa': instance.nombreEmpresa,
      'direccionEmpresa': instance.direccionEmpresa,
      'numeroTelefonicos': instance.numeroTelefonicos,
      'sueldo': instance.sueldo,
      'descripcion': instance.descripcion,
      'valorDuracion': instance.valorDuracion,
      'escalaDuracion': instance.escalaDuracion,
      'turnoTrabajo': instance.turnoTrabajo,
      'fechaInicioTrabajo': instance.fechaInicioTrabajo,
      'fechaCulminacionTrabajo': instance.fechaCulminacionTrabajo,
      'estatus': instance.estatus,
    };
