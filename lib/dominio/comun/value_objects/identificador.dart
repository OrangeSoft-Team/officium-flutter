import 'package:dartz/dartz.dart' show Either, right;
import 'package:uuid/uuid.dart';

import 'package:officium_flutter/dominio/comun/factoriaValorErroneo.dart';

import '../value_object.dart';

class Identificador extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> valor;

  factory Identificador() {
    return Identificador._(
      right(const Uuid().v1()),
    );
  }

  factory Identificador.fromUniqueString(String idUnico) {
    return Identificador._(
      right(idUnico),
    );
  }

  const Identificador._(this.valor);
}
