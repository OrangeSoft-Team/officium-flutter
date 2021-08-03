import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/leccion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/leccion/contenido_leccion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/leccion/descripcion_leccion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/leccion/titulo_leccion.dart';
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
  
  /*Leccion toDomain() {
    return Leccion(
     uuid: Identificador.fromUniqueString(uuid),
     tituloLeccion: TituloLeccion(titulo),
     contenidoLeccion: ContenidoLeccion(),
     descripcionLeccion: DescripcionLeccion()
    );
  }*/
}