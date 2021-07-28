import 'package:freezed_annotation/freezed_annotation.dart';
import 'leccion_lista_dto.dart';
part 'detalle_curso_dto.freezed.dart';
part 'detalle_curso_dto.g.dart';

@freezed
abstract class DetalleCursoDTO implements _$DetalleCursoDTO {
  const DetalleCursoDTO._();
  factory DetalleCursoDTO({
    required String uuid,
    required String titulo,
    required String estatus,
    required int valorDuracion,
    required String escalaDuracion,
    required String fechaCreacion,
    required List<LeccionListaDTO> lecciones, 
    required List<String> habilidades,
    required String descripcion,
    String? fechaUltimaModificacion,
  }) = _DetalleCursoDTO;

  factory DetalleCursoDTO.fromJson(Map<String, dynamic> json) =>
      _$DetalleCursoDTOFromJson(json);
  
  /*factory DetalleCursoDTO.fromDomain(DetalleCurso DetalleCurso) {
    return DetalleCursoDTO(
     
    );
  }*/

  /*DetalleCurso toDomain() {
    return DetalleCurso(
     
    );
  }*/
}