import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<String>, String> validadorStringNoVacio(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValorErroneo.stringVacio(valorErroneo: input));
  }
}
