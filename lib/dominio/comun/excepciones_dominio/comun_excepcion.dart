import 'package:freezed_annotation/freezed_annotation.dart';

part 'comun_excepcion.freezed.dart';

@freezed
abstract class ComunExcepcion with _$ComunExcepcion {
  const factory ComunExcepcion.errorServidor() = _ErrorServidor;
  const factory ComunExcepcion.errorInesperado() = _ErrorInesperado;
}
