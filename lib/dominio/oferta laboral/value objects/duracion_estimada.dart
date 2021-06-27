import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

//TODO

class DuracionEscala {
  final int duracion;
  final String escala;

  const DuracionEscala._(this.duracion, this.escala);
}

class DuracionEstimada extends ValueObject<DuracionEscala> {
  //En esta falta verificar para el caso de ambos valores que se contempla,
  //se deja la base.

  @override
  final Either<ValorErroneo<DuracionEscala>, DuracionEscala> value;

  static const escala = ["hora", "dia", "semana", "mes"];

  factory DuracionEstimada(DuracionEscala valor) {
    return DuracionEstimada._(right(valor));
  }

  const DuracionEstimada._(this.value);
}
