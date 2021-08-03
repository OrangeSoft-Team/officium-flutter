import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/certificado/descripcion_certificado.dart';

part 'certificado.freezed.dart';

@freezed
abstract class Certificado with _$Certificado {
  @Implements(IEntidad)
  const factory Certificado({
    required Identificador uuid,
    required Fecha fechaExpedicion,
    DescripcionCertificado? descripcionCertificado,
  }) = _Certificado;
}
