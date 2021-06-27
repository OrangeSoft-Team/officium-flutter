import 'package:dartz/dartz.dart' show Either, right;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/oferta%20laboral/servicios_dominio/validadores_oferta_laboral/validador_cargo.dart';

class Cargo extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;
  static const maxLength = 40;
  static const minLength = 4;

  factory Cargo(String input) {
    return Cargo._(
      validadorLongitudCargo(input, maxLength, minLength),
    );
  }

  const Cargo._(this.value);
}
