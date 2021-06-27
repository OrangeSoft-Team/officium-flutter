import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoriaValorErroneo.dart';\
import 'package:officium_flutter/dominio/comun/value_object.dart';

class DuracionEstimada extends ValueObject<DuracionEstimada> {
  //En esta falta verificar para el caso de ambos valores que se contempla,
  //se deja la base.

  @override
  final Either<ValorErroneo<DuracionEstimada>, DuracionEstimada> duracion;

  factory DuracionEstimada(DuracionEstimada duracion) {
    return DuracionEstimada._(right(duracion));
  }

  const DuracionEstimada._(this.duracion);
}
