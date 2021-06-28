import 'package:freezed_annotation/freezed_annotation.dart';

import 'entidad.dart';
import 'value_objects/identificador.dart';
import 'ciudad.dart';
import 'pais.dart';
import 'estado.dart';

//FALTA!!

part 'direccion.freezed.dart';

@freezed
abstract class Direccion with _$Direccion {
  @Implements(IEntitidad)
  const factory Direccion({required Identificador uuid}) = _Direccion;
}
