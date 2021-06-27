import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';
import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_StringNoVacio.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_longitudString.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class TituloOfertaLaboral extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;
  static const maxLength = 80;
  static const minLength = 4;

  factory TituloOfertaLaboral(String input) {
    return TituloOfertaLaboral._(
        validadorLongitudInvalida(input, maxLength, minLength)
            .flatMap(validadorStringNoVacio));
  }

  const TituloOfertaLaboral._(this.value);
}
