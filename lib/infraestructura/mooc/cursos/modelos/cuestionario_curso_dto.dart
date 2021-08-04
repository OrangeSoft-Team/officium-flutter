import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/Duracion_Oferta/duracion_escalas.dart';
import 'package:officium_flutter/dominio/mooc/entidades/cuestionario.dart';
import 'package:officium_flutter/dominio/mooc/entidades/pregunta.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/cuestionario/Duracion_Oferta/duracion_estimada_cuestionario.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/cuestionario/escala_calificacion_cuestionario.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/cuestionario/intentos_permitidos_cuestionario.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/pregunta_cuestionario_dto.dart';
part 'cuestionario_curso_dto.freezed.dart';
part 'cuestionario_curso_dto.g.dart';

@freezed
abstract class CuestionarioCursoDTO implements _$CuestionarioCursoDTO {
  const CuestionarioCursoDTO._();
  factory CuestionarioCursoDTO({
    required String uuid,
    required int valorDuracion,
    required String escalaDuracion,
    required int intentosPermitidos,
    required List<PreguntaCuestionarioDTO> preguntasCuestionario,
  }) = _CuestionarioCursoDTO;

  factory CuestionarioCursoDTO.fromJson(Map<String, dynamic> json) =>
      _$CuestionarioCursoDTOFromJson(json);

  Cuestionario toDomain() {
    final List<Pregunta> parsedPreguntas = [];
    for(final pregunta in preguntasCuestionario){
      parsedPreguntas.add(pregunta.toDomain());
    }
    return Cuestionario(
     uuid:Identificador.fromUniqueString(uuid),
     duracionCuestionario: DuracionCuestionario(DuracionEscala(valorDuracion,escalaDuracion)),
     escalaCalificacionCuestionario: EscalaCalificacionCuestionario(10),//!
     intentosPermitidosCuestionario: IntentosPermitidosCuestionario(intentosPermitidos),
     listaPreguntas: parsedPreguntas
    );
  }
}