import 'package:freezed_annotation/freezed_annotation.dart';

import 'entidad.dart';
import 'value_objects/identificador.dart';
import 'value_objects/nombre_ciudad.dart';
part 'ciudad.freezed.dart';

@freezed
abstract class Ciudad with _$Ciudad {
  @Implements(IEntitidad)
  const factory Ciudad({
    required Identificador uuid,
    required NombreCiudad nombre,
  }) = _Ciudad;
}
