import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';

part 'experiencia_laboral.freezed.dart';

@freezed
abstract class ExperienciaLaboral implements _$ExperienciaLaboral {
  const ExperienciaLaboral._();
  @Implements(IEntidad)
  const factory ExperienciaLaboral({
    required Identificador uuid,
    required Cargo cargo,
    required NombreEmpresa nombreEmpresa,
    required Fecha fechaInicio,
    Fecha? fechaFin,
  }) = _ExperienciaLaboral;

  factory ExperienciaLaboral.vacio() => ExperienciaLaboral(
        uuid: Identificador(),
        cargo: Cargo(""),
        nombreEmpresa: NombreEmpresa(""),
        fechaInicio: Fecha(DateTime.now()),
      );

  Option<ValorErroneo<dynamic>> get opcionFallo {
    return cargo.failureOrUnit
        .andThen(nombreEmpresa.failureOrUnit)
        .andThen(fechaInicio.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
