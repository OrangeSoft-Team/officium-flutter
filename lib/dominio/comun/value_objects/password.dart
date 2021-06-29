import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_password.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  static int maxLongitud = 64;
  static int minLongitud = 10;

  factory Password(String password) {
    return Password._(
      validadorPassword(password, maxLongitud, minLongitud),
    );
  }

  const Password._(this.value);
}
