import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/certificado.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/certificado/descripcion_certificado.dart';
part 'certificado_dto.freezed.dart';
part 'certificado_dto.g.dart';

final formatoFecha = DateFormat("dd/MM/yyyy");
@freezed
abstract class CertificadoDTO implements _$CertificadoDTO {
  const CertificadoDTO._();
  factory CertificadoDTO({
    required String uuid,
    required String titulo,
    required String fechaExpedicion,
    required String descripcion,
  }) = _CertificadoDTO;

  factory CertificadoDTO.fromJson(Map<String, dynamic> json) =>
      _$CertificadoDTOFromJson(json);

  Certificado toDomain() {
    return Certificado(
      uuid: Identificador.fromUniqueString(uuid),
      fechaExpedicion: Fecha(formatoFecha.parse(fechaExpedicion)), 
      descripcionCertificado: DescripcionCertificado(descripcion)
    );
  }
}