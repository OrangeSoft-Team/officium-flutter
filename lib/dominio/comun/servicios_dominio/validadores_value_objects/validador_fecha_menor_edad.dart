import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';

Either<ValorErroneo<DateTime>, DateTime> validadorFechaMenorEdad(
    DateTime fechaNacimiento) {
  final DateTime fechaHoy = DateTime.now();
  final DateTime fechaAdulto = DateTime(
    fechaNacimiento.year + 18,
    fechaNacimiento.month,
    fechaNacimiento.day,
  );
  if (fechaAdulto.isBefore(fechaHoy)) {
    return right(fechaNacimiento);
  } else {
    return left(
        ValorErroneo.fechaNacimientoMenorEdad(fechaErronea: fechaNacimiento));
  }
}
