import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<int>, int> validadorNumeroVacantes(
    int numVacante, int maxVacantes, int minVacantes) {
  if (numVacante <= maxVacantes && numVacante >= minVacantes) {
    return right(numVacante);
  } else {
    return left(
        ValorErroneo.numVacantesInvalido(numVacantesInvalido: numVacante));
  }
}
