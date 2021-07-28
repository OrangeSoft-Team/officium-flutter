import 'package:freezed_annotation/freezed_annotation.dart';
part 'lista_curso_dto.freezed.dart';
part 'lista_curso_dto.g.dart';


@freezed
abstract class ListaCursoDTO implements _$ListaCursoDTO {
  const ListaCursoDTO._();
  factory ListaCursoDTO({
    required String uuid,
    required String titulo,
    required String estatus,
    required String fechaCreacion
  }) = _ListaCursoDTO;

  factory ListaCursoDTO.fromJson(Map<String, dynamic> json) =>
    _$ListaCursoDTOFromJson(json);
  
  /*factory ListaCursoDTO.fromDomain(ListaCurso ListaCurso) {
    return ListaCursoDTO(
     
    );
  }*/

  /*ListaCurso toDomain() {
    return ListaCurso(
     
    );
  }*/
}