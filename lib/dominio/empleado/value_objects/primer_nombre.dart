import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';
import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_StringNoVacio.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_longitudString.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class PrimerNombre extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;
  static const maxLength = 40;
  static const minLength = 3;

  factory PrimerNombre(String input) {
    return PrimerNombre._(validadorLongitudInvalida(input, maxLength, minLength)
        .flatMap(validadorStringNoVacio));
  }

  const PrimerNombre._(this.value);
}
