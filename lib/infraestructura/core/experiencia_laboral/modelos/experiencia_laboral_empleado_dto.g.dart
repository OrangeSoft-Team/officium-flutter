// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experiencia_laboral_empleado_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExperienciaLaboralEmpleadoDTO _$_$_ExperienciaLaboralEmpleadoDTOFromJson(
    Map<String, dynamic> json) {
  return _$_ExperienciaLaboralEmpleadoDTO(
    uuid: json['uuid'] as String,
    cargo: json['cargo'] as String,
    nombreEmpresa: json['nombreEmpresa'] as String,
    fechaInicio: json['fechaInicio'] as String,
    fechaFin: json['fechaFin'] as String?,
  );
}

Map<String, dynamic> _$_$_ExperienciaLaboralEmpleadoDTOToJson(
        _$_ExperienciaLaboralEmpleadoDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'cargo': instance.cargo,
      'nombreEmpresa': instance.nombreEmpresa,
      'fechaInicio': instance.fechaInicio,
      'fechaFin': instance.fechaFin,
    };
