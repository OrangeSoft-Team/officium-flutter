import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';
import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_longitudString.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class SegundoNombre extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;
  static const maxLength = 40;
  static const minLength = 3;

  factory SegundoNombre(String value) {
    return SegundoNombre._(
        validadorLongitudInvalida(value, maxLength, minLength));
  }

  const SegundoNombre._(this.value);
}
