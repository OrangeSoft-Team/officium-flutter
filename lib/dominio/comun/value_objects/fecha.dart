import 'package:dartz/dartz.dart' show Either, right;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_fecha.dart';

import '../value_object.dart';

class Fecha extends ValueObject<DateTime> {
  @override
  final Either<ValorErroneo<DateTime>, DateTime> value;

  factory Fecha(DateTime value) {
    return Fecha._(validadorFecha(value));
  }
  const Fecha._(this.value);
}
