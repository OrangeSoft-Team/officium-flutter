// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postulacion_empleado_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostulacionEmpleadoDTO _$_$_PostulacionEmpleadoDTOFromJson(
    Map<String, dynamic> json) {
  return _$_PostulacionEmpleadoDTO(
    uuid: json['uuid'] as String,
    uuidOfertaLaboral: json['uuidOfertaLaboral'] as String,
    tituloOferta: json['tituloOferta'] as String,
    cargoOferta: json['cargoOferta'] as String,
    estatus: json['estatus'] as String,
    nombreEmpresa: json['nombreEmpresa'] as String,
    comentario: json['comentario'] as String?,
  );
}

Map<String, dynamic> _$_$_PostulacionEmpleadoDTOToJson(
        _$_PostulacionEmpleadoDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'uuidOfertaLaboral': instance.uuidOfertaLaboral,
      'tituloOferta': instance.tituloOferta,
      'cargoOferta': instance.cargoOferta,
      'estatus': instance.estatus,
      'nombreEmpresa': instance.nombreEmpresa,
      'comentario': instance.comentario,
    };
