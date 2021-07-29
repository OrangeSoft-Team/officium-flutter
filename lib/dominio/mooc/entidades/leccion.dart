import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/leccion/contenido_leccion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/leccion/descripcion_leccion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/leccion/titulo_leccion.dart';

part 'leccion.freezed.dart';

@freezed
abstract class Leccion with _$Leccion {
  @Implements(IEntidad)
  const factory Leccion({
    required Identificador uuid,
    required TituloLeccion tituloLeccion,
    required DescripcionLeccion descripcionLeccion,
    required ContenidoLeccion contenidoLeccion,
  }) = _Leccion;
}
