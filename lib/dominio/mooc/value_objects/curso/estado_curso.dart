import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_string_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/validadores_value_objects/curso/validador_estado_curso.dart';

class EstadoCurso extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  static const turnos = ["ACTIVO", "INACTIVO"];

  factory EstadoCurso(String turno) {
    return EstadoCurso._(
        validadorEstadoCurso(turno, turnos).flatMap(validadorStringNoVacio));
  }

  const EstadoCurso._(this.value);
}
