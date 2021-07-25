import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/core/value_objects/habilidad/categoria.dart';
import 'package:officium_flutter/dominio/core/value_objects/habilidad/nombre_habilidad.dart';

part 'habilidad.freezed.dart';

@freezed
abstract class Habilidad with _$Habilidad {
  @Implements(IEntidad)
  const factory Habilidad({
    required Identificador uuid,
    required TituloHabilidad tituloHabilidad,
    required Categoria categoria,
  }) = _Habilidad;
}
