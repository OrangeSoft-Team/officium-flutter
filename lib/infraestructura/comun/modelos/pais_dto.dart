import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/pais.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/comun/value_objects/nombre_pais.dart';
part 'pais_dto.freezed.dart';
part 'pais_dto.g.dart';

@freezed
abstract class PaisDTO implements _$PaisDTO {
  const PaisDTO._();
  factory PaisDTO({
    required String uuidPais,
    required String nombrePais,
  }) = _PaisDTO;

  factory PaisDTO.fromJson(Map<String, dynamic> json) =>
      _$PaisDTOFromJson(json);

  /*factory PaisDTO.fromDomain(Pais pais) {
    return PaisDTO(
     
    );
  }*/
  Pais toDomain() {
    return Pais(
      uuid:Identificador.fromUniqueString(uuidPais),
      nombre:NombrePais(nombrePais),
      ciudades:[] //!
    );
  }
}