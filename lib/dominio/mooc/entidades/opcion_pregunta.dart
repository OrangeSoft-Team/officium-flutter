import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/opcion_pregunta/valor_pregunta.dart';

part 'opcion_pregunta.freezed.dart';

@freezed
abstract class OpcionPregunta with _$OpcionPregunta {
  @Implements(IEntidad)
  const factory OpcionPregunta({
    required Identificador uuid,
    required ValorPregunta valorPregunta,
  }) = _OpcionPregunta;
}
