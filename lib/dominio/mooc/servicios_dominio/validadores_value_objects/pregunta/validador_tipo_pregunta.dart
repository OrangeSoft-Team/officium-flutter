import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<String>, String> validadorTipoPregunta(
  String tipo,
  List<String> tiposValidos,
) {
  if (tiposValidos.contains(tipo)) {
    return right(tipo);
  } else {
    return left(ValorErroneo.tipoPreguntaInvalido(
        valorErroneo: tipo, tiposValidos: tiposValidos));
  }
}
