import 'package:freezed_annotation/freezed_annotation.dart';
part 'habilidad_dto.freezed.dart';
part 'habilidad_dto.g.dart';

@freezed
abstract class HabilidadDTO implements _$HabilidadDTO {
  const HabilidadDTO._();

  factory HabilidadDTO({
    required String uuid,
    required String nombre,
    required String categoria,
  }) = _HabilidadDTO;

  factory HabilidadDTO.fromJson(Map<String, dynamic> json) =>
      _$HabilidadDTOFromJson(json);
      

  /*factory HabilidadDTO.fromDomain(Habilidad habilidad) {
    return HabilidadDTO(
     
    );
  }
  Habilidad toDomain() {
    return Habilidad(
        
  }*/
}