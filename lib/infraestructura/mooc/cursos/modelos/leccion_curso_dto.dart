import 'package:freezed_annotation/freezed_annotation.dart';
part 'leccion_curso_dto.freezed.dart';
part 'leccion_curso_dto.g.dart';

@freezed
abstract class LeccionCursoDTO implements _$LeccionCursoDTO {
  const LeccionCursoDTO._();
  factory LeccionCursoDTO({
    required String uuid,
    required String titulo,
    required String descripcion,
    required String contenido
  }) = _LeccionCursoDTO;

  factory LeccionCursoDTO.fromJson(Map<String, dynamic> json) =>
    _$LeccionCursoDTOFromJson(json);
  
  /*factory LeccionCursoDTO.fromDomain(LeccionCurso LeccionCurso) {
    return LeccionCursoDTO(
     
    );
  }*/

  /*LeccionCurso toDomain() {
    return LeccionCurso(
     
    );
  }*/
}