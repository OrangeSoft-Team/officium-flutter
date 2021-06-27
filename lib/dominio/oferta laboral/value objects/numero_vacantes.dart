import 'package:dartz/dartz.dart' show Either, right;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/oferta%20laboral/servicios_dominio/validadores_oferta_laboral/validador_vacantes.dart';

class NumeroVacantes extends ValueObject<int> {
  @override
  final Either<ValorErroneo<int>, int> value;
  static const int maxNumeroVacantes = 99;
  static const int minNumeroVacantes = 1;

  factory NumeroVacantes(
      int value, int maxNumeroVacantes, int minNumeroVacantes) {
    return NumeroVacantes._(
        validadorNumeroVacantes(value, maxNumeroVacantes, minNumeroVacantes));
  }

  const NumeroVacantes._(this.value);
}
