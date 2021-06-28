import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

bool validadorDuracionEscalaInvalida(
  String turno,
  List<String> turnosValidos,
) {
  if (turnosValidos.contains(turno)) {
    return true;
  } else {
    return false;
  }
}
