import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<String>, String> validadorPassword(
    String password, int maxLongitud, int minLongitud) {
  final bool tieneUppercase = password.contains(new RegExp(r'[A-Z]'));
  final bool tieneDigits = password.contains(new RegExp(r'[0-9]'));
  final bool tieneLowercase = password.contains(new RegExp(r'[a-z]'));
  final bool tieneSpecialCharacters =
      password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
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
