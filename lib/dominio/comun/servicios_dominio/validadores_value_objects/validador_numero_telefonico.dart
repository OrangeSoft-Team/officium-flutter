import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<String>, String> validadorNumeroTelefonico(
    String numeroTelefonico) {
  const String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  final RegExp regExp = RegExp(pattern);
  if (numeroTelefonico.isEmpty) {
    return left(
        ValorErroneo.numeroTelefonicoVacio(numeroErroneo: numeroTelefonico));
  } else if (!regExp.hasMatch(numeroTelefonico)) {
    return left(
        ValorErroneo.numeroTelefonicoInvalido(numeroErroneo: numeroTelefonico));
  }
  return right(numeroTelefonico);
}
