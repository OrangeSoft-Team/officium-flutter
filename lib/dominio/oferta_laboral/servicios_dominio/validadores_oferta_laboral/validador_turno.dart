import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<String>, String> validadorTurno(
  String turno,
  List<String> turnosValidos,
) {
  if (turnosValidos.contains(turno)) {
    return right(turno);
  } else {
    return left(ValorErroneo.turnoInvalido(
        valorErroneo: turno, turnosValidos: turnosValidos));
  }
}
