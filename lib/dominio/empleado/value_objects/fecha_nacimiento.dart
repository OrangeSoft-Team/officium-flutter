import 'package:dartz/dartz.dart' show Either, right;
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_fecha.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_fecha_menor_edad.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class FechaNacimiento extends ValueObject<DateTime> {
  @override
  final Either<ValorErroneo<DateTime>, DateTime> value;

  factory FechaNacimiento(DateTime value) {
    return FechaNacimiento._(
        validadorFechaMenorEdad(value).flatMap(validadorFecha));
  }

  const FechaNacimiento._(this.value);
}
