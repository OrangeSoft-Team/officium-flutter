import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidad.dart';

@freezed
abstract class OfertaLaboral with _$OfertaLaboral {
  @Implements(IEntitidad)
  const factory OfertaLaboral() = _OfertaLaboral;
}
