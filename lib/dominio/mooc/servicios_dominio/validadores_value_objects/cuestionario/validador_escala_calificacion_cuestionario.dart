import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<int>, int> validadorEscalaCalificacionCuestionario(
  int escala,
  int maxEscala,
) {
  if (escala <= maxEscala && escala >= 0) {
    return right(escala);
  } else {
    return left(ValorErroneo.escalaCalificacionCuestionarioInvalida(
        valorErroneo: escala, maxEscala: maxEscala));
  }
}
