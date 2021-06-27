import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';

Either<ValorErroneo<double>, double> validadorSueldo(
  double sueldo,
  double maxSueldo,
) {
  if (sueldo <= maxSueldo) {
    return right(sueldo);
  } else {
    return left(
        ValorErroneo.sueldoInvalido(valorErroneo: sueldo, max: maxSueldo));
  }
}
