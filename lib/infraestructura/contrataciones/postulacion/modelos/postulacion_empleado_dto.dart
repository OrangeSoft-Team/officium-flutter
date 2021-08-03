import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/estado_postulacion.dart';
part 'postulacion_empleado_dto.freezed.dart';
part 'postulacion_empleado_dto.g.dart';

@freezed
abstract class PostulacionEmpleadoDTO implements _$PostulacionEmpleadoDTO {
  const PostulacionEmpleadoDTO._();
  factory PostulacionEmpleadoDTO({
    required String uuid,
    required String uuidOfertaLaboral,
    required String tituloOferta,
    required String cargoOferta,
    required String estatus,
    required String nombreEmpresa,
    String? comentario
  }) = _PostulacionEmpleadoDTO;

  factory PostulacionEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$PostulacionEmpleadoDTOFromJson(json);

  PostulacionOfertaLaboral toDomain() {
    return PostulacionOfertaLaboral(
      uuidEmpleado:Identificador(),//!
      uuidEmpresa: Identificador(),//!
      uuidOfertaLaboral: Identificador.fromUniqueString(uuidOfertaLaboral),
      estado: EstadoPostulacionOfertaLaboral(estatus),
      comentarioPostulacionOfertaLaboral: ComentarioPostulacionOfertaLaboral(comentario!)
    );
  }
}