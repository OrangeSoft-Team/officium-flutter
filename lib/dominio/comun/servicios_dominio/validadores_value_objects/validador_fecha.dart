import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<DateTime>, DateTime> validadorFecha(DateTime fecha) {
  // ignore: unnecessary_null_comparison
  if (fecha != null) {
    return right(fecha);
  } else {
    return left(ValorErroneo.fechaNula(fechaErronea: fecha));
  }
}
