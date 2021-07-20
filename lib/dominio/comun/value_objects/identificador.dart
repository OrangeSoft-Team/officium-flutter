import 'package:dartz/dartz.dart' show Either, right;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:uuid/uuid.dart';

import '../value_object.dart';

class Identificador extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  factory Identificador() {
    return Identificador._(
      right(const Uuid().v4()),
    );
  }

  factory Identificador.fromUniqueString(String uniqueId) {
    return Identificador._(
      right(uniqueId),
    );
  }

  const Identificador._(this.value);
}
