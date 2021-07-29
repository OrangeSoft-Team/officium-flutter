import 'package:dartz/dartz.dart' show Either;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_longitud_string.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_string_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class DireccionCalle extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;
  static const int maxDireccionCalle = 255;
  static const int minDireccionCalle = 4;

  factory DireccionCalle(String value) {
    return DireccionCalle._(
        validadorLongitudInvalida(value, maxDireccionCalle, minDireccionCalle)
            .flatMap(validadorStringNoVacio));
  }

  const DireccionCalle._(this.value);
}
