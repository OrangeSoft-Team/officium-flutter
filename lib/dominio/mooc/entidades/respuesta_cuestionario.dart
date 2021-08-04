import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
part 'respuesta_cuestionario.freezed.dart';

@freezed
abstract class RespuestaCuestionario with _$RespuestaCuestionario {
  @Implements(IEntidad)
  const factory RespuestaCuestionario({
    required Identificador uuid,
    required Identificador uuidOpcionPregunta,
    required Identificador uuidOpcion,
  }) = _RespuestaCuestionario;
}
