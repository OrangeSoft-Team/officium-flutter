import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/ciudad.dart';

import 'entidad.dart';
import 'value_objects/identificador.dart';
import 'value_objects/nombre_ciudad.dart';

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
