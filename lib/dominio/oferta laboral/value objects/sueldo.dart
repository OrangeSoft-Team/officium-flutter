import 'package:dartz/dartz.dart' show Either, right;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';
import 'package:officium_flutter/dominio/oferta%20laboral/servicios_dominio/validadores_oferta_laboral/validador_SueldoNoVacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/oferta%20laboral/servicios_dominio/validadores_oferta_laboral/validador_sueldo.dart';

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
