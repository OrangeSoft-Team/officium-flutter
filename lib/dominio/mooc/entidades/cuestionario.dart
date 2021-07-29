import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/pregunta.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/cuestionario/Duracion_Oferta/duracion_estimada_cuestionario.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/cuestionario/escala_calificacion_cuestionario.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/cuestionario/intentos_permitidos_cuestionario.dart';

part 'cuestionario.freezed.dart';

@freezed
abstract class Cuestionario with _$Cuestionario {
  @Implements(IEntidad)
  const factory Cuestionario({
    required Identificador uuid,
    required DuracionCuestionario duracionCuestionario,
    required EscalaCalificacionCuestionario escalaCalificacionCuestionario,
    required IntentosPermitidosCuestionario intentosPermitidosCuestionario,
    required List<Pregunta> listaPreguntas,
  }) = _Cuestionario;
}
