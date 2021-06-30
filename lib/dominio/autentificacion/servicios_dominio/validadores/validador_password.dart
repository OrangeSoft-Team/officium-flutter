import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<String>, String> validadorPassword(
    String password, int maxLongitud, int minLongitud) {
  final bool tieneMayusculas = password.contains(RegExp(r'[A-Z]'));
  final bool tieneDigitos = password.contains(RegExp(r'[0-9]'));
  final bool tieneMinusculas = password.contains(RegExp(r'[a-z]'));
  final bool tieneCaracteresEspeciales =
      password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  final bool tieneLongitudMinima = password.length >= minLongitud;
  final bool tieneLongitudMaxima = password.length <= maxLongitud;

  if (password.isNotEmpty &&
      tieneMayusculas &&
      tieneDigitos &&
      tieneMinusculas &&
      tieneCaracteresEspeciales &&
      tieneLongitudMinima &&
      tieneLongitudMaxima) {
    return right(password);
  } else if (tieneMayusculas == false) {
    return left(ValorErroneo.contrasenaSinMayuscula(valorErroneo: password));
  } else if (tieneDigitos == false) {
    return left(ValorErroneo.contrasenaSinNumero(valorErroneo: password));
  } else if (tieneMinusculas == false) {
    return left(ValorErroneo.contrasenaSinMinuscula(valorErroneo: password));
  } else if (tieneCaracteresEspeciales == false) {
    return left(
        ValorErroneo.contrasenaSinCaracterEspecial(valorErroneo: password));
  } else if (tieneLongitudMinima == false) {
    left(ValorErroneo.contrasenaCorta(valorErroneo: password));
  }
  return left(ValorErroneo.contrasenaLarga(valorErroneo: password));
}
