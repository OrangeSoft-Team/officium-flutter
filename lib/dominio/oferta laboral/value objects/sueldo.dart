import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/factoriaValorErroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class EmpresaNombre extends ValueObject<Float> {
  @override
  final Either<ValorErroneo<Float>, Float> valor;

  factory EmpresaNombre(Float valor) {
    return EmpresaNombre._(right(valor));
  }

  const EmpresaNombre._(this.valor);
}
