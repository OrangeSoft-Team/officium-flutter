import 'package:freezed_annotation/freezed_annotation.dart';

part 'oferta_laboral_excepciones.freezed.dart';

@freezed
abstract class OfertaLaboralExcepcion with _$OfertaLaboralExcepcion {
  const factory OfertaLaboralExcepcion.errorServidor() = _ErrorServidor;
  const factory OfertaLaboralExcepcion.errorPostularOferta() =
      _ErrorPostularOferta;
}
