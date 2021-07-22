import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<String>, String> validadorNivelEducativo(
  String nivelEducativo,
  List<String> nivelesEducativosValidos,
) {
  if (nivelesEducativosValidos.contains(nivelEducativo)) {
    return right(nivelEducativo);
  } else {
    return left(
      ValorErroneo.nivelEducativoInvalido(
          valorErroneo: nivelEducativo,
          nivelesEducativosValidos: nivelesEducativosValidos),
    );
  }
}
