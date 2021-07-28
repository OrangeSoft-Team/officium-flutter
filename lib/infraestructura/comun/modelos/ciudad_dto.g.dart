// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ciudad_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CiudadDTO _$_$_CiudadDTOFromJson(Map<String, dynamic> json) {
  return _$_CiudadDTO(
    uuidPais: json['uuidPais'] as String,
    uuidEstado: json['uuidEstado'] as String,
    uuidCiudad: json['uuidCiudad'] as String,
    nombreCiudad: json['nombreCiudad'] as String,
  );
}

Map<String, dynamic> _$_$_CiudadDTOToJson(_$_CiudadDTO instance) =>
    <String, dynamic>{
      'uuidPais': instance.uuidPais,
      'uuidEstado': instance.uuidEstado,
      'uuidCiudad': instance.uuidCiudad,
      'nombreCiudad': instance.nombreCiudad,
    };
