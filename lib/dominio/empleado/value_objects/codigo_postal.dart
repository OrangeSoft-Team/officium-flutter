import 'package:dartz/dartz.dart' show Either, right;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_longitudString.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class CodigoPostal extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;
  static const int maxCodigoPostal = 10;
  static const int minCodigoPostal = 1;

  factory CodigoPostal(String value) {
    return CodigoPostal._(
        validadorLongitudInvalida(value, maxCodigoPostal, minCodigoPostal));
  }

  const CodigoPostal._(this.value);
}
