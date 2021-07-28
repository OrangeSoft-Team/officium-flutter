import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/Duracion_Oferta/duracion_escalas.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/validadores_value_objects/cuestionario/validador_duracion_curso.dart';

class DuracionCuestionario extends ValueObject<DuracionEscala> {
  @override
  final Either<ValorErroneo<DuracionEscala>, DuracionEscala> value;
  static const escalasValidas = [
    "minutos)",
    "hora",
  ];
  static int minValorDuracion = 0;
  static int maxValorDuracion = 60;

  factory DuracionCuestionario(DuracionEscala value) {
    return DuracionCuestionario._(validadorDuracionCuestionario(
        value, escalasValidas, minValorDuracion, maxValorDuracion));
  }
  const DuracionCuestionario._(this.value);
  @override
  String toString() {
    return '$value';
  }
}
