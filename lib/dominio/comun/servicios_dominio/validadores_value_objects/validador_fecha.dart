import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';

Either<ValorErroneo<DateTime>, DateTime> validadorFecha(DateTime fecha) {
  if (fecha != null) {
    return right(fecha);
  } else {
    return left(ValorErroneo.fechaNula(fechaErronea: fecha));
  }
}
