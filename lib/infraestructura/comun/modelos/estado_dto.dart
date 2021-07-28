import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/estado.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/comun/value_objects/nombre_ciudad.dart';
part 'estado_dto.freezed.dart';
part 'estado_dto.g.dart';

@freezed
abstract class EstadoDTO implements _$EstadoDTO {
  const EstadoDTO._();
  factory EstadoDTO({
    required String uuidPais,
    required String uuidEstado,
    required String nombreEstado,
  }) = _EstadoDTO;

  factory EstadoDTO.fromJson(Map<String, dynamic> json) =>
      _$EstadoDTOFromJson(json);
  
  /*factory EstadoDTO.fromDomain(Estado estado) {
    return EstadoDTO(
     
    );
  }*/

  Estado toDomain() {
    return Estado(
      uuid:Identificador.fromUniqueString(uuidEstado),
      nombre:NombreCiudad(nombreEstado),
      ciudades:[], //!
    );
  }
}