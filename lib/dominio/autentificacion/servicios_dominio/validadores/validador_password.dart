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
      tieneUppercase &&
      tieneDigits &&
      tieneLowercase &&
      tieneSpecialCharacters &&
      tieneMinLength &&
      tieneMaxLength) {
    return right(password);
  } else if (tieneUppercase == false) {
    return left(ValorErroneo.contrasenaSinMayuscula(valorErroneo: password));
  } else if (tieneDigits == false) {
    return left(ValorErroneo.contrasenaSinNumero(valorErroneo: password));
  } else if (tieneLowercase == false) {
    return left(ValorErroneo.contrasenaSinMinuscula(valorErroneo: password));
  } else if (tieneSpecialCharacters == false) {
    return left(
        ValorErroneo.contrasenaSinCaracterEspecial(valorErroneo: password));
  } else if (tieneMinLength == false) {
    left(ValorErroneo.contrasenaCorta(valorErroneo: password));
  }
  return left(ValorErroneo.contrasenaLarga(valorErroneo: password));
}
