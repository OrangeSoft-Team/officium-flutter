import 'package:dartz/dartz.dart' show Either;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/validadores_value_objects/pregunta/validador_ponderacion_pregunta.dart';

class PonderacionPregunta extends ValueObject<int> {
  @override
  final Either<ValorErroneo<int>, int> value;
  static const int maxPonderacionPregunta = 100;

  factory PonderacionPregunta(int ponderacion) {
    return PonderacionPregunta._(
        validadorPonderacionPregunta(ponderacion, maxPonderacionPregunta));
  }

  const PonderacionPregunta._(this.value);
}
