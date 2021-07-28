// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificado_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CertificadoDTO _$_$_CertificadoDTOFromJson(Map<String, dynamic> json) {
  return _$_CertificadoDTO(
    uuid: json['uuid'] as String,
    titulo: json['titulo'] as String,
    fechaExpedicion: json['fechaExpedicion'] as String,
    descripcion: json['descripcion'] as String,
  );
}

Map<String, dynamic> _$_$_CertificadoDTOToJson(_$_CertificadoDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'titulo': instance.titulo,
      'fechaExpedicion': instance.fechaExpedicion,
      'descripcion': instance.descripcion,
    };
