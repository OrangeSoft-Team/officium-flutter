import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/core/servicios_dominio/validadores/empleado/validador_nivel_educativo.dart';

class NivelEducativo extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  static const nivelesEducativosValidos = [
    "NINGUNO",
    "PRIMARIA",
    "SECUNDARIA",
    "TECNICO",
    "PREGADO",
    "POSTGRADO",
    "DOCTORADO",
    "MASTER"
  ];

  factory NivelEducativo(String nivelEducativo) {
    return NivelEducativo._(
        validadorNivelEducativo(nivelEducativo, nivelesEducativosValidos));
  }

  const NivelEducativo._(this.value);
}
