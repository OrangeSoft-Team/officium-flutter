import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/pregunta/enunciado_pregunta.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/pregunta/ponderacion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/pregunta/tipo_pregunta.dart';
part 'pregunta.freezed.dart';

@freezed
abstract class Pregunta with _$Pregunta {
  @Implements(IEntidad)
  const factory Pregunta({
    required Identificador uuid,
    required EnunciadoPregunta enunciadoPregunta,
    required TipoPregunta tipoPregunta,
    required PonderacionPregunta ponderacionPregunta,
  }) = _Pregunta;
}
