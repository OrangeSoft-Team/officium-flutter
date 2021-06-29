import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<String>, String> validadorGenero(
  String genero,
  List<String> generosValidos,
) {
  if (generosValidos.contains(genero)) {
    return right(genero);
  } else {
    return left(ValorErroneo.generoInvalido(
        valorErroneo: genero, generosValidos: generosValidos));
  }
}
