import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/comun/value_objects/nombre_ciudad.dart';

import 'entidad.dart';
part 'ciudad.freezed.dart';

@freezed
abstract class Ciudad with _$Ciudad {
  @Implements(IEntidad)
  const factory Ciudad({
    required Identificador uuid,
    required NombreCiudad nombre,
  }) = _Ciudad;
}
