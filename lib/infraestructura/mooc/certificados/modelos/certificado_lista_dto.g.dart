// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificado_lista_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CertificadoListaDTO _$_$_CertificadoListaDTOFromJson(
    Map<String, dynamic> json) {
  return _$_CertificadoListaDTO(
    uuid: json['uuid'] as String,
    titulo: json['titulo'] as String,
    fechaExpedicion: json['fechaExpedicion'] as String,
  );
}

Map<String, dynamic> _$_$_CertificadoListaDTOToJson(
        _$_CertificadoListaDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'titulo': instance.titulo,
      'fechaExpedicion': instance.fechaExpedicion,
    };
