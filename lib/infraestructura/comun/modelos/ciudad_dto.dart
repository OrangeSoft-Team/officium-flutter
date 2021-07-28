import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/ciudad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/comun/value_objects/nombre_ciudad.dart';
part 'ciudad_dto.freezed.dart';
part 'ciudad_dto.g.dart';

@freezed
abstract class CiudadDTO implements _$CiudadDTO {
  const CiudadDTO._();
  factory CiudadDTO({
    required String uuidPais,
    required String uuidEstado,
    required String uuidCiudad,
    required String nombreCiudad,
  }) = _CiudadDTO;

  factory CiudadDTO.fromJson(Map<String, dynamic> json) =>
      _$CiudadDTOFromJson(json);
  
  /*factory CiudadDTO.fromDomain(Ciudad ciudad) {
    return CiudadDTO(
     
    );
  }*/
  
  Ciudad toDomain() {
    return Ciudad(
      uuid: Identificador.fromUniqueString(uuidCiudad),
      nombre: NombreCiudad(nombreCiudad),
    );
  }
}