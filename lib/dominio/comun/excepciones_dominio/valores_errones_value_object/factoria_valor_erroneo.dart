import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'factoria_valor_erroneo.freezed.dart';

//Aquí se encuentra la fábrica de ValueFailures que pueden estar presentes en las validaciones de los Value Objects a lo largo del projecto

@freezed
abstract class ValorErroneo<T> with _$ValorErroneo<T> {
  const factory ValorErroneo.emailInvalido({
    required T valorErroneo,
  }) = EmailInvalido<T>;
  const factory ValorErroneo.contrasenaCorta({
    required T valorErroneo,
  }) = ContrasenaCorta<T>;
  const factory ValorErroneo.stringVacio({
    required T valorErroneo,
  }) = StringVacio<T>;

  const factory ValorErroneo.longitudInvalida({
    required T valorErroneo,
    required int min,
    required int max,
  }) = LongitudInvalida<T>;

  const factory ValorErroneo.sueldoInvalido({
    required T valorErroneo,
    required double max,
  }) = SueldoInvalida<T>;

  const factory ValorErroneo.sueldoVacio({
    required T valorErroneo,
  }) = SueldoVacio<T>;

  const factory ValorErroneo.fechaNula({required T fechaErronea}) =
      FechaNula<T>;
  const factory ValorErroneo.numVacantesInvalido(
      {required T numVacantesInvalido}) = NumVacantesInvalido<T>;

  const factory ValorErroneo.numVacantesNoVacia({required T valorErroneo}) =
      NumVacantesNoVacia<T>;
  const factory ValorErroneo.turnoInvalido(
      {required T valorErroneo,
      required List<String> turnosValidos}) = TurnoInvalido<T>;
  const factory ValorErroneo.generoInvalido(
      {required T valorErroneo,
      required List<String> generosValidos}) = GeneroInvalido<T>;
}
