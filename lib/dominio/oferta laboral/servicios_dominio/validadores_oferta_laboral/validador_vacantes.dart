import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';

Either<ValorErroneo<int>, int> validadorNumeroVacantes(
    int num_vacante, int maxVacantes, int minVacantes) {
  if (num_vacante <= maxVacantes && num_vacante >= minVacantes) {
    return right(num_vacante);
  } else {
    return left(
        ValorErroneo.numVacantesInvalido(numVacantesInvalido: num_vacante));
  }
}
