import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_string_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/oferta%20laboral/servicios_dominio/validadores_oferta_laboral/validador_turno.dart';

class EstadoOferta extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  static const turnos = ["publicado", "cancelado"];

  factory EstadoOferta(String titulo) {
    return EstadoOferta._(
        validadorTurno(titulo, turnos).flatMap(validadorStringNoVacio));
  }

  const EstadoOferta._(this.value);
}
