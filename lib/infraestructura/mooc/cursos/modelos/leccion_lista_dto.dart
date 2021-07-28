import 'package:freezed_annotation/freezed_annotation.dart';
part 'leccion_lista_dto.freezed.dart';
part 'leccion_lista_dto.g.dart';

@freezed
abstract class LeccionListaDTO implements _$LeccionListaDTO {
  const LeccionListaDTO._();
  factory LeccionListaDTO({
    required String uuid,
    required String titulo,
  }) = _LeccionListaDTO;

  factory LeccionListaDTO.fromJson(Map<String, dynamic> json) =>
      _$LeccionListaDTOFromJson(json);
  
  /*factory LeccionListaDTO.fromDomain(LeccionLista LeccionLista) {
    return LeccionListaDTO(
     
    );
  }*/

  /*LeccionLista toDomain() {
    return LeccionLista(
     
    );
  }*/
}