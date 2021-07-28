import 'package:freezed_annotation/freezed_annotation.dart';
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
  
  /*factory CuestionarioCursoDTO.fromDomain(CuestionarioCurso cuestionario) {
    return CuestionarioCursoDTO(
     
    );
  }*/

  /*CuestionarioCurso toDomain() {
    return CuestionarioCurso(
     
    );
  }*/
}