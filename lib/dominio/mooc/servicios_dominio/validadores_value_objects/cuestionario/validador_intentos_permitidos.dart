import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<int>, int> validadorIntentosPermitidos(
  int intento,
  int maxintento,
) {
  if (intento <= maxintento && intento > 0) {
    return right(intento);
  } else {
    return left(ValorErroneo.intentosPermitidosCuestionarioInvalido(
        valorErroneo: intento, maxIntento: maxintento));
  }
}
