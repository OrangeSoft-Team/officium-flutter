import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<String>, String> validadorEstadoOfertaLaboral(
  String estado,
  List<String> estadosValidos,
) {
  if (estadosValidos.contains(estado)) {
    return right(estado);
  } else {
    return left(ValorErroneo.estadoOfertaInvalido(
        valorErroneo: estado, turnosValidos: estadosValidos));
  }
}
