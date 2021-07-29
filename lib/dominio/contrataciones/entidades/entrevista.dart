import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/entrevista/asunto_entrevista.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/entrevista/estado_entrevista.dart';

part 'entrevista.freezed.dart';

@freezed
abstract class Entrevista with _$Entrevista {
  @Implements(IEntidad)
  const factory Entrevista({
    required Identificador uuid,
    required AsuntoEntrevista asuntoEntrevista,
    required Fecha fechaPautada,
    required EstadoEntrevista estadoEntrevista,
    required Identificador uuidPersonalAdministrativo,
  }) = _Entrevista;
}
