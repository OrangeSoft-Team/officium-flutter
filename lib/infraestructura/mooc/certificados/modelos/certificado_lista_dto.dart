import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/certificado.dart';
part 'certificado_lista_dto.freezed.dart';
part 'certificado_lista_dto.g.dart';

final formatoFecha = DateFormat("dd/MM/yyyy");
@freezed
abstract class CertificadoListaDTO implements _$CertificadoListaDTO {
  const CertificadoListaDTO._();
  factory CertificadoListaDTO({
    required String uuid,
    required String titulo,
    required String fechaExpedicion,
  }) = _CertificadoListaDTO;

  factory CertificadoListaDTO.fromJson(Map<String, dynamic> json) =>
      _$CertificadoListaDTOFromJson(json);
  
  /*factory CertificadoListaDTO.fromDomain(Certificado Certificado) {
    return CertificadoListaDTO(
     
    );
  }*/

  Certificado toDomain() {
    return Certificado(
     uuid: Identificador.fromUniqueString(uuid),
     fechaExpedicion: Fecha(formatoFecha.parse(fechaExpedicion)),
    );
  }
}