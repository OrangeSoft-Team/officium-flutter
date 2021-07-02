import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_longitud_string.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class ComentarioPostulacionOfertaLaboral extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;
  static int minLongitud = 16;
  static int maxLongitud = 256;

  factory ComentarioPostulacionOfertaLaboral(String comentario) {
    return ComentarioPostulacionOfertaLaboral._(
        validadorLongitudInvalida(comentario, maxLongitud, minLongitud));
  }

  const ComentarioPostulacionOfertaLaboral._(this.value);
}
