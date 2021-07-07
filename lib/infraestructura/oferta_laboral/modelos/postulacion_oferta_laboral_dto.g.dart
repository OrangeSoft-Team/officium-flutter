// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postulacion_oferta_laboral_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostulacionOfertaLaboralDTO _$_$_PostulacionOfertaLaboralDTOFromJson(
    Map<String, dynamic> json) {
  return _$_PostulacionOfertaLaboralDTO(
    uuidOfertaLaboral: json['uuidOfertaLaboral'] as String,
    uuidEmpleado: json['uuidEmpleado'] as String,
    uuidEmpresa: json['uuidEmpresa'] as String,
    comentario: json['comentario'] as String?,
  );
}

Map<String, dynamic> _$_$_PostulacionOfertaLaboralDTOToJson(
        _$_PostulacionOfertaLaboralDTO instance) =>
    <String, dynamic>{
      'uuidOfertaLaboral': instance.uuidOfertaLaboral,
      'uuidEmpleado': instance.uuidEmpleado,
      'uuidEmpresa': instance.uuidEmpresa,
      'comentario': instance.comentario,
    };
