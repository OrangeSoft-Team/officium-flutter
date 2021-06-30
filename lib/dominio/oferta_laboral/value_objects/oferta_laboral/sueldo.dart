import 'package:dartz/dartz.dart' show Either, right;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/servicios_dominio/validadores_oferta_laboral/validador_sueldo_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/oferta_laboral/servicios_dominio/validadores_oferta_laboral/validador_sueldo.dart';

class Sueldo extends ValueObject<double> {
  @override
  final Either<ValorErroneo<double>, double> value;
  static const double maxSueldo = 1000000.00;

  factory Sueldo(double input, double maxSueldo) {
    return Sueldo._(
      validadorSueldo(input, maxSueldo).flatMap(validadorSueldoNoVacio),
    );
  }

  const Sueldo._(this.value);
}