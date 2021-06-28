import 'package:freezed_annotation/freezed_annotation.dart';

import 'ciudad.dart';
import 'entidad.dart';
import 'value_objects/direccion/calle_direccion.dart';
import 'value_objects/direccion/codigo_postal_direccion.dart';
import 'value_objects/identificador.dart';

part 'direccion.freezed.dart';

@freezed
abstract class Direccion with _$Direccion {
  @Implements(IEntitidad)
  const factory Direccion({
    required Identificador uuid,
    required Ciudad ciudad,
    required CalleDireccion calle,
    required CodigoPostalDireccion codigoPostal,
  }) = _Direccion;
}
