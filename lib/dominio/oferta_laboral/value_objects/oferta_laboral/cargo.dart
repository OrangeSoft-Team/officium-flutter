import 'package:dartz/dartz.dart' show Either;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_longitud_string.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_string_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class Cargo extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;
  static const maxLength = 40;
  static const minLength = 4;

  factory Cargo(String input) {
    return Cargo._(validadorLongitudInvalida(input, maxLength, minLength)
        .flatMap(validadorStringNoVacio));
  }

  const Cargo._(this.value);
}
