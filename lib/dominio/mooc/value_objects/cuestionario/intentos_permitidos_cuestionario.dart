import 'package:dartz/dartz.dart' show Either;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/validadores_value_objects/cuestionario/validador_intentos_permitidos.dart';

class IntentosPermitidosCuestionario extends ValueObject<int> {
  @override
  final Either<ValorErroneo<int>, int> value;
  static const int maxIntentos = 5;

  factory IntentosPermitidosCuestionario(int intento) {
    return IntentosPermitidosCuestionario._(
        validadorIntentosPermitidos(intento, maxIntentos));
  }

  const IntentosPermitidosCuestionario._(this.value);
}
