import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

bool validadorDuracionEstimadaValor(
    int valor, int minNumeroValor, int maxNumeroValor) {
  if (valor >= minNumeroValor && valor <= maxNumeroValor) {
    return true;
  } else {
    return false;
  }
}
