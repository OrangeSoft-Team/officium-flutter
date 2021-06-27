import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';

Either<ValorErroneo<double>, double> validadorSueldoNoVacio(double input) {
  if (input > 0) {
    return right(input);
  } else {
    return left(ValorErroneo.sueldoVacio(valorErroneo: input));
  }
}
