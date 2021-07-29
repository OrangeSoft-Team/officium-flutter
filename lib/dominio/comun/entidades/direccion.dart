import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/direccion/calle_direccion.dart';
import 'package:officium_flutter/dominio/comun/value_objects/direccion/codigo_postal_direccion.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';

import 'ciudad.dart';
import 'entidad.dart';

part 'direccion.freezed.dart';

@freezed
abstract class Direccion with _$Direccion {
  @Implements(IEntidad)
  const factory Direccion({
    required Identificador uuid,
    required Ciudad ciudad,
    required CalleDireccion calle,
    required CodigoPostalDireccion codigoPostal,
  }) = _Direccion;
}
