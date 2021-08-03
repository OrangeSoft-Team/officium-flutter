import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/leccion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/leccion/contenido_leccion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/leccion/descripcion_leccion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/leccion/titulo_leccion.dart';
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

  Leccion toDomain() {
    return Leccion(
     uuid: Identificador.fromUniqueString(uuid),
     tituloLeccion: TituloLeccion(titulo),
     contenidoLeccion: ContenidoLeccion(contenido),
     descripcionLeccion: DescripcionLeccion(descripcion)
    );
  }
}