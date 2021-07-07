import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_genero.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_string_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';

class Genero extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  static const generos = ["femenino", "masculino", "otro"];

  factory Genero(String nombre) {
    return Genero._(
        validadorGenero(nombre, generos).flatMap(validadorStringNoVacio));
  }

  const Genero._(this.value);
}
