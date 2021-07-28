import 'package:freezed_annotation/freezed_annotation.dart';

part 'mooc_excepciones.freezed.dart';

@freezed
abstract class MoocExcepcion with _$MoocExcepcion {
  const factory MoocExcepcion.errorServidor() = _ErrorServidor;
  const factory MoocExcepcion.errorInscripcionCurso() = _ErrorInscripcionCurso;
}
