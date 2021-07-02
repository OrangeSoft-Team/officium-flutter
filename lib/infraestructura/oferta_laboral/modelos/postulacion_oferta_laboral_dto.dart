import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/postulacion_oferta_laboral/estado_postulacion.dart';
part 'postulacion_oferta_laboral_dto.freezed.dart';

@freezed
abstract class PostulacionOfertaLaboralDTO with _$PostulacionOfertaLaboralDTO{
  factory PostulacionOfertaLaboralDTO({
    required String uuidEmpleado,
    required String uuidEmpresa,
    String? comentario,
  }) = _PostulacionOfertaLaboralDTO;

  factory PostulacionOfertaLaboralDTO.fromJson(Map<String, dynamic> json) => _$PostulacionOfertaLaboralDTOFromJson(json);

  factory PostulacionOfertaLaboralDTO.fromDomain(PostulacionOfertaLaboral postulacionOfertaLaboral) {
    return PostulacionOfertaLaboralDTO(
      uuidEmpleado:postulacionOfertaLaboral.uuidEmpleado.getOrCrash(), 
      uuidEmpresa: postulacionOfertaLaboral.uuidEmpresa.getOrCrash(),
      comentario: postulacionOfertaLaboral.comentarioPostulacionOfertaLaboral.getOrCrash(),
    );
  }
}

extension PostulacionOfertaLaboralDTOX on PostulacionOfertaLaboralDTO {
  PostulacionOfertaLaboral toDomain() {
    return PostulacionOfertaLaboral(
    uuidEmpleado: Identificador.fromUniqueString(uuidEmpleado),
    //uuidOfertaLaboral: Identificador.fromUniqueString(uuidEmpleado),
    uuidEmpresa:Identificador.fromUniqueString(uuidEmpresa),
    comentarioPostulacionOfertaLaboral: ComentarioPostulacionOfertaLaboral(comentario ?? ''),
    estado:estadoOfertalaboral.aprobada,
    );
  }
}
/**
+ UUIDEmpleado: string
+ UUIDEmpresa: string
? Comentario: string 
*/