import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/autentificacion/servicios_dominio/validadores/validador_email.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  factory EmailAddress(String email) {
    return EmailAddress._(
      validadorEmailAddress(email),
    );
  }

  const EmailAddress._(this.value);
}
