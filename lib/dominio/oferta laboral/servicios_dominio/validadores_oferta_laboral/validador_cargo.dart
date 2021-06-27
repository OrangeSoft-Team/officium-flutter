import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';

Either<ValorErroneo<String>, String> validadorLongitudCargo(
  String input,
  int maxLength,
  int minLength,
) {
  if (input.length >= minLength && (input.length <= maxLength)) {
    return right(input);
  } else {
    return left(
      ValorErroneo.cargoLongitudInvalida(
          valorErroneo: input, min: minLength, max: maxLength),
    );
  }
}
