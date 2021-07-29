import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_string_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/validadores_entrevista/validador_estado_entrevista.dart';

class EstadoEntrevista extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  static const turnos = ["PROPUESTA", "ACEPTADA", "RECHAZADA"];

  factory EstadoEntrevista(String turno) {
    return EstadoEntrevista._(validadorEstadoEntrevista(turno, turnos)
        .flatMap(validadorStringNoVacio));
  }

  const EstadoEntrevista._(this.value);
}
