import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/pregunta.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/pregunta/enunciado_pregunta.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/pregunta/ponderacion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/pregunta/tipo_pregunta.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/opcion_pregunta_dto.dart';
part 'pregunta_cuestionario_dto.freezed.dart';
part 'pregunta_cuestionario_dto.g.dart';

@freezed
abstract class PreguntaCuestionarioDTO implements _$PreguntaCuestionarioDTO {
  const PreguntaCuestionarioDTO._();
  factory PreguntaCuestionarioDTO({
    required String uuid,
    List<OpcionPreguntaDTO>? opciones,
  }) = _PreguntaCuestionarioDTO;

  factory PreguntaCuestionarioDTO.fromJson(Map<String, dynamic> json) =>
      _$PreguntaCuestionarioDTOFromJson(json);
  
  /*
  factory PreguntaCuestionarioDTO.fromDomain(PreguntaCuestionario cuestionario) {
    return PreguntaCuestionarioDTO(
     
    );
  }
  */

  Pregunta toDomain() {
    return Pregunta(
     uuid: Identificador.fromUniqueString(uuid),
     tipoPregunta: TipoPregunta('TIPO TEST'),//!
     ponderacionPregunta: PonderacionPregunta(2),
     enunciadoPregunta: EnunciadoPregunta('ENUNCIADO TEST'),//!
    );
  }
}