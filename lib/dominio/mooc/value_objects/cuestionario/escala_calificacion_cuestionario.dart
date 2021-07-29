import 'package:dartz/dartz.dart' show Either;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/validadores_value_objects/cuestionario/validador_escala_calificacion_cuestionario.dart';

class EscalaCalificacionCuestionario extends ValueObject<int> {
  @override
  final Either<ValorErroneo<int>, int> value;
  static const int maxExcala = 60;

  factory EscalaCalificacionCuestionario(int escala) {
    return EscalaCalificacionCuestionario._(
        validadorEscalaCalificacionCuestionario(escala, maxExcala));
  }

  const EscalaCalificacionCuestionario._(this.value);
}
