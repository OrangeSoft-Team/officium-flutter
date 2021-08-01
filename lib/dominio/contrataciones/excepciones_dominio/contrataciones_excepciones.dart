import 'package:freezed_annotation/freezed_annotation.dart';

part 'contrataciones_excepciones.freezed.dart';

@freezed
abstract class ContratacionExcepcion with _$ContratacionExcepcion {
  const factory ContratacionExcepcion.errorServidor() = _ErrorServidor;
  const factory ContratacionExcepcion.errorPostularOferta() =
      _ErrorPostularOferta;
}
