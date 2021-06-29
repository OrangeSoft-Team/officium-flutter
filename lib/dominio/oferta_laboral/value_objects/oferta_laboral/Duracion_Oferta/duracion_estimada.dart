import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/oferta_laboral/servicios_dominio/validadores_oferta_laboral/validador_duracion.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/Duracion_Oferta/duracion_escalas.dart';

class Duracion extends ValueObject<DuracionEscala> {
  @override
  final Either<ValorErroneo<DuracionEscala>, DuracionEscala> value;
  static const escalasValidas = ["hora", "dia", "semana", "mes"];
  static int minValorDuracion = 0;
  static int maxValorDuracion = 99;

  factory Duracion(DuracionEscala value) {
    return Duracion._(validadorDuracionOfertaValida(
        value, escalasValidas, minValorDuracion, maxValorDuracion));
  }
  const Duracion._(this.value);
}
