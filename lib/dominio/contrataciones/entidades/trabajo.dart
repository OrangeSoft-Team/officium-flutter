import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/trabajo/estado_trabajo.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/trabajo/titulo_trabajo.dart';

part 'trabajo.freezed.dart';

@freezed
abstract class Trabajo with _$Trabajo {
  @Implements(IEntidad)
  const factory Trabajo({
    required Identificador uuidTrabajo,
    required TituloTrabajo tituloOfertaLaboral,
    required Fecha fechaInicio,
    Fecha? fechaFin,
    required EstadoTrabajo estadoTrabajo,
  }) = _Trabajo;
}
