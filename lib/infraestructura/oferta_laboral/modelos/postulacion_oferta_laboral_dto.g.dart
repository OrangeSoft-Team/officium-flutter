// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postulacion_oferta_laboral_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_PostulacionOfertaLaboralDTO _$_$_PostulacionOfertaLaboralDTOFromJson(
    Map<String, dynamic> json) {
  return _$_PostulacionOfertaLaboralDTO(
    id: json['id'] as String,
    uuidOfertaLaboral: json['uuidOfertaLaboral'] as String,
    uuidEmpleado: json['uuidEmpleado'] as String,
    uuidEmpresa: json['uuidEmpresa'] as String,
    comentario: json['comentario'] as String?,
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_PostulacionOfertaLaboralDTOToJson(
        _$_PostulacionOfertaLaboralDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuidOfertaLaboral': instance.uuidOfertaLaboral,
      'uuidEmpleado': instance.uuidEmpleado,
      'uuidEmpresa': instance.uuidEmpresa,
      'comentario': instance.comentario,
    };
