// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oferta_laboral_detalle_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_OfertaLaboralDetalleDTO _$_$_OfertaLaboralDetalleDTOFromJson(
    Map<String, dynamic> json) {
  return _$_OfertaLaboralDetalleDTO(
    uuid: json['uuid'] as String,
    titulo: json['titulo'] as String,
    fechaPublicacion: json['fechaPublicacion'] as String,
    fechaModificacion: json['fechaModificacion'] as String,
    cargo: json['cargo'] as String,
    sueldo: (json['sueldo'] as num).toDouble(),
    descripcion: json['descripcion'] as String,
    duracionEstimadaValor: json['duracionEstimadaValor'] as int,
    duracionEstimadaEscala: json['duracionEstimadaEscala'] as String,
    turnoTrabajo: json['turnoTrabajo'] as String,
    numeroVacantes: json['numeroVacantes'] as int,
    uuidEmpresa: json['uuidEmpresa'] as String,
    empresaNombre: json['empresaNombre'] as String,
    direccionEmpresa: json['direccionEmpresa'] as String,
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_OfertaLaboralDetalleDTOToJson(
        _$_OfertaLaboralDetalleDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'titulo': instance.titulo,
      'fechaPublicacion': instance.fechaPublicacion,
      'fechaModificacion': instance.fechaModificacion,
      'cargo': instance.cargo,
      'sueldo': instance.sueldo,
      'descripcion': instance.descripcion,
      'duracionEstimadaValor': instance.duracionEstimadaValor,
      'duracionEstimadaEscala': instance.duracionEstimadaEscala,
      'turnoTrabajo': instance.turnoTrabajo,
      'numeroVacantes': instance.numeroVacantes,
      'uuidEmpresa': instance.uuidEmpresa,
      'empresaNombre': instance.empresaNombre,
      'direccionEmpresa': instance.direccionEmpresa,
    };
