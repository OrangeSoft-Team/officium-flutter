import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<String>, String> validadorPassword(
    String password, int maxLongitud, int minLongitud) {
  // ignore: unnecessary_raw_strings
  final bool tieneUppercase = password.contains(RegExp(r'[A-Z]'));
  // ignore: unnecessary_raw_strings
  final bool tieneDigits = password.contains(RegExp(r'[0-9]'));
  // ignore: unnecessary_raw_strings
  final bool tieneLowercase = password.contains(RegExp(r'[a-z]'));
  final bool tieneSpecialCharacters =
      password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  final bool tieneMinLength = password.length >= minLongitud;
  final bool tieneMaxLength = password.length <= maxLongitud;

  if (password.isNotEmpty &&
      tieneMayusculas &&
      tieneDigitos &&
      tieneMinusculas &&
      tieneCaracteresEspeciales &&
      tieneLongitudMinima &&
      tieneLongitudMaxima) {
    return right(password);
  } else if (password.isEmpty) {
    return left(ValorErroneo.contrasenaVacia(valorErroneo: password));
  } else if (tieneMinLength == false) {
    return left(ValorErroneo.contrasenaCorta(valorErroneo: password));
  } else if (tieneMaxLength == false) {
    return left(ValorErroneo.contrasenaLarga(valorErroneo: password));
  } else if (tieneUppercase == false) {
    return left(ValorErroneo.contrasenaSinMayuscula(valorErroneo: password));
  } else if (tieneDigitos == false) {
    return left(ValorErroneo.contrasenaSinNumero(valorErroneo: password));
  } else if (tieneMinusculas == false) {
    return left(ValorErroneo.contrasenaSinMinuscula(valorErroneo: password));
  } else if (tieneCaracteresEspeciales == false) {
    return left(
        ValorErroneo.contrasenaSinCaracterEspecial(valorErroneo: password));
  }
  return left(ValorErroneo.contrasenaVacia(valorErroneo: password));
}
