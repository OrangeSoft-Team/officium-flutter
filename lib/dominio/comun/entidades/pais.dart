import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/comun/value_objects/nombre_pais.dart';

import 'entidad.dart';
import 'estado.dart';
part 'pais.freezed.dart';

@freezed
abstract class Pais with _$Pais {
  @Implements(IEntitidad)
  const factory Pais(
      {required Identificador uuid,
      required NombrePais nombre,
      required List<Estado> ciudades}) = _Pais;
}
