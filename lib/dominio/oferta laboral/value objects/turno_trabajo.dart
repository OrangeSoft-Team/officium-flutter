import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/factoriaValorErroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class TurnoTrabajo extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> valor;

  factory TurnoTrabajo(String titulo) {
    return TurnoTrabajo._(right(titulo));
  }

  const TurnoTrabajo._(this.valor);
}
