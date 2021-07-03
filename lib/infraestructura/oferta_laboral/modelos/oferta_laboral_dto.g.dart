// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oferta_laboral_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfertaLaboralDTO _$_$_OfertaLaboralDTOFromJson(Map<String, dynamic> json) {
  return _$_OfertaLaboralDTO(
    uuid: json['uuid'] as String,
    titulo: json['titulo'] as String,
    fechaPublicacion: json['fechaPublicacion'] as String,
    cargo: json['cargo'] as String,
    sueldo: (json['sueldo'] as num).toDouble(),
    duracionEstimadaValor: json['duracionEstimadaValor'] as int,
    duracionEstimadaEscala: json['duracionEstimadaEscala'] as String,
    turnoTrabajo: json['turnoTrabajo'] as String,
    numeroVacantes: json['numeroVacantes'] as int,
    empresaNombre: json['empresaNombre'] as String,
  );
}

Map<String, dynamic> _$_$_OfertaLaboralDTOToJson(
        _$_OfertaLaboralDTO instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'titulo': instance.titulo,
      'fechaPublicacion': instance.fechaPublicacion,
      'cargo': instance.cargo,
      'sueldo': instance.sueldo,
      'duracionEstimadaValor': instance.duracionEstimadaValor,
      'duracionEstimadaEscala': instance.duracionEstimadaEscala,
      'turnoTrabajo': instance.turnoTrabajo,
      'numeroVacantes': instance.numeroVacantes,
      'empresaNombre': instance.empresaNombre,
    };
