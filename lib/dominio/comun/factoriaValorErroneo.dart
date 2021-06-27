import 'package:freezed_annotation/freezed_annotation.dart';

part 'factoriaValorErroneo.freezed.dart';

//Aquí se encuentra la fábrica de ValueFailures que pueden estar presentes en las validaciones de los Value Objects a lo largo del projecto

@freezed
abstract class ValorErroneo<T> with _$ValorErroneo<T> {
  const factory ValorErroneo.excedeLongitudMaxima({
    required T valorErroneo,
    required int max,
  }) = ExcedeLongitudMaxima<T>;
  const factory ValorErroneo.emailInvalido({
    required T valorErroneo,
  }) = EmailInvalido<T>;
  const factory ValorErroneo.contrasenaCorta({
    required T valorErroneo,
  }) = ContrasenaCorta<T>;
  const factory ValorErroneo.ciudadInvalida({
    required T valorErroneo,
  }) = CiudadInvalida<T>;
  const factory ValorErroneo.fechaInvalida({
    required T valorErroneo,
  }) = FechaInvalida<T>;
}
