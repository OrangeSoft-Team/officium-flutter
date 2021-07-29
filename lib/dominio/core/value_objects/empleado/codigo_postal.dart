import 'package:dartz/dartz.dart' show Either;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_longitud_string.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_string_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class CodigoPostal extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;
  static const int maxCodigoPostal = 10;
  static const int minCodigoPostal = 1;

  factory CodigoPostal(String value) {
    return CodigoPostal._(
        validadorLongitudInvalida(value, maxCodigoPostal, minCodigoPostal)
            .flatMap(validadorStringNoVacio));
  }

  const CodigoPostal._(this.value);
}
