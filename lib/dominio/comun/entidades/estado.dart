import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/ciudad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/comun/value_objects/nombre_ciudad.dart';

import 'entidad.dart';

part 'estado.freezed.dart';

@freezed
abstract class Estado with _$Estado {
  @Implements(IEntitidad)
  const factory Estado({
    required Identificador uuid,
    required NombreCiudad nombre,
    required List<Ciudad> ciudades,
  }) = _Estado;
}
