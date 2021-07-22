import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<int>, int> validadorVacantesNoVacio(int input) {
  if (input > 0) {
    return right(input);
  } else {
    return left(ValorErroneo.numVacantesNoVacia(valorErroneo: input));
  }
}
