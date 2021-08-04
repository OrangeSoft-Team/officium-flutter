import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';

part 'postulacion_oferta_laboral_dto.freezed.dart';
part 'postulacion_oferta_laboral_dto.g.dart';

@freezed
abstract class PostulacionOfertaLaboralDTO
    implements _$PostulacionOfertaLaboralDTO {
  const PostulacionOfertaLaboralDTO._();
  const factory PostulacionOfertaLaboralDTO({
    required String uuidOfertaLaboral,
    required String uuidEmpleado,
    required String uuidEmpresa,
    String? comentario,
  }) = _PostulacionOfertaLaboralDTO;

  factory PostulacionOfertaLaboralDTO.fromJson(Map<String, dynamic> json) =>
      _$PostulacionOfertaLaboralDTOFromJson(json);

  factory PostulacionOfertaLaboralDTO.fromDomain(
      PostulacionOfertaLaboral postulacionOfertaLaboral) {
    return PostulacionOfertaLaboralDTO(
        uuidOfertaLaboral:
            postulacionOfertaLaboral.uuidOfertaLaboral.getOrCrash(),
        uuidEmpleado: postulacionOfertaLaboral.uuidEmpleado.getOrCrash(),
        uuidEmpresa: postulacionOfertaLaboral.uuidEmpresa.getOrCrash(),
        comentario: postulacionOfertaLaboral.comentarioPostulacionOfertaLaboral!
            .getOrCrash());
  }

//Candidata a eliminar? Porque obliga a poner atributos en opcional en la entidad de dominio
  PostulacionOfertaLaboral toDomain() {
    return PostulacionOfertaLaboral(
        uuid: Identificador(),
        uuidOfertaLaboral: Identificador.fromUniqueString(uuidOfertaLaboral),
        uuidEmpleado: Identificador.fromUniqueString(uuidEmpleado),
        uuidEmpresa: Identificador.fromUniqueString(uuidEmpresa),
        comentarioPostulacionOfertaLaboral:
            ComentarioPostulacionOfertaLaboral(comentario!));
  }
}
