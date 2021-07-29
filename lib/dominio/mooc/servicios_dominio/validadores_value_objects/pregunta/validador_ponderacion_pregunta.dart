import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<int>, int> validadorPonderacionPregunta(
  int ponderacion,
  int maxPonderacion,
) {
  if (ponderacion <= maxPonderacion && ponderacion > 0) {
    return right(ponderacion);
  } else {
    return left(ValorErroneo.ponderacionPreguntaInvalido(
        valorErroneo: ponderacion, maxPonderacion: maxPonderacion));
  }
}
