import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_longitud_string.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_string_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class NombreEstado extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;
  static const maxLength = 128;
  static const minLength = 2;

  factory NombreEstado(String value) {
    return NombreEstado._(validadorLongitudInvalida(value, maxLength, minLength)
        .flatMap(validadorStringNoVacio));
  }

  const NombreEstado._(this.value);
}
