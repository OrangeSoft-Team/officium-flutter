import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

bool validadorDuracionEscalaVacio(String turno) {
  if (turno.isEmpty) {
    return true;
  } else {
    return false;
  }
}
