import 'package:dartz/dartz.dart' show Either, right;
import 'package:uuid/uuid.dart';

import 'package:officium_flutter/dominio/comun/factoriaValorErroneo.dart';

import '../value_object.dart';

class Identificador extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  factory Identificador() {
    return Identificador._(
      right(const Uuid().v1()),
    );
  }

  factory Identificador.fromUniqueString(String uniqueId) {
    return Identificador._(
      right(uniqueId),
    );
  }

  const Identificador._(this.value);
}
