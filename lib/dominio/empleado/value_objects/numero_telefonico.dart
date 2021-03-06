import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_numero_telefonico.dart';

import 'package:officium_flutter/dominio/comun/value_object.dart';

class NumeroTelefonico extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  factory NumeroTelefonico(String input) {
    return NumeroTelefonico._(validadorNumeroTelefonico(input));
  }

  const NumeroTelefonico._(this.value);
}
