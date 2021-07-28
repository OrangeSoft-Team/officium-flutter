// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datos_basicos_empleado_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DatosBasicosEmpleadoDTO _$_$_DatosBasicosEmpleadoDTOFromJson(
    Map<String, dynamic> json) {
  return _$_DatosBasicosEmpleadoDTO(
    correoElectronico: json['correoElectronico'] as String,
    token: json['token'] as String,
    primerNombre: json['primerNombre'] as String,
    segundoNombre: json['segundoNombre'] as String?,
    primerApellido: json['primerApellido'] as String,
    segundoApellido: json['segundoApellido'] as String?,
    genero: json['genero'] as String,
    nivelEducativo: json['nivelEducativo'] as String,
    numeroTelefonico: json['numeroTelefonico'] as String,
    fechaNacimiento: json['fechaNacimiento'] as String,
    codigoPostal: json['codigoPostal'] as String,
    calleUno: json['calleUno'] as String,
    calleDos: json['calleDos'] as String?,
    uuidPais: json['uuidPais'] as String,
    uuidEstado: json['uuidEstado'] as String,
    uuidCiudad: json['uuidCiudad'] as String,
    habilidades: (json['habilidades'] as List<dynamic>?)
        ?.map((e) => HabilidadDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_DatosBasicosEmpleadoDTOToJson(
        _$_DatosBasicosEmpleadoDTO instance) =>
    <String, dynamic>{
      'correoElectronico': instance.correoElectronico,
      'token': instance.token,
      'primerNombre': instance.primerNombre,
      'segundoNombre': instance.segundoNombre,
      'primerApellido': instance.primerApellido,
      'segundoApellido': instance.segundoApellido,
      'genero': instance.genero,
      'nivelEducativo': instance.nivelEducativo,
      'numeroTelefonico': instance.numeroTelefonico,
      'fechaNacimiento': instance.fechaNacimiento,
      'codigoPostal': instance.codigoPostal,
      'calleUno': instance.calleUno,
      'calleDos': instance.calleDos,
      'uuidPais': instance.uuidPais,
      'uuidEstado': instance.uuidEstado,
      'uuidCiudad': instance.uuidCiudad,
      'habilidades': instance.habilidades,
    };
