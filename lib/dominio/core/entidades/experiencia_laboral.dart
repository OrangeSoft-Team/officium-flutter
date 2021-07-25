import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';

part 'experiencia_laboral.freezed.dart';

@freezed
abstract class ExperienciaLaboral with _$ExperienciaLaboral {
  @Implements(IEntidad)
  const factory ExperienciaLaboral({
    required Identificador uuid,
    required Cargo cargo,
    required NombreEmpresa nombreEmpresa,
    required Fecha fechaInicio,
    Fecha? fechaFin,
  }) = _ExperienciaLaboral;
}
