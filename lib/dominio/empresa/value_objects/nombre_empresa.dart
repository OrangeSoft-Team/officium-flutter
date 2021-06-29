import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_longitud_string.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_string_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class NombreEmpresa extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  static const int minLongitudNombreEmpresa = 4;
  static const int maxLongitudNombreEmpresa = 128;

  factory NombreEmpresa(String nombreEmpresa) {
    return NombreEmpresa._(validadorLongitudInvalida(
            nombreEmpresa, maxLongitudNombreEmpresa, minLongitudNombreEmpresa)
        .flatMap((a) => validadorStringNoVacio(nombreEmpresa)));
  }

  const NombreEmpresa._(this.value);
}
