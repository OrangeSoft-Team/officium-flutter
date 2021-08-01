import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/estado_postulacion.dart';
part 'postulacion_oferta.freezed.dart';

@freezed
abstract class PostulacionOfertaLaboral with _$PostulacionOfertaLaboral {
  const factory PostulacionOfertaLaboral({
    required Identificador uuidOfertaLaboral,
    required Identificador uuidEmpleado,
    required Identificador uuidEmpresa,
    ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral,
    EstadoPostulacionOfertaLaboral? estado,
  }) = _PostulacionOfertaLaboral;
}
