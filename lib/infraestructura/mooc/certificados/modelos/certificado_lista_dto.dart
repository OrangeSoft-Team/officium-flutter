import 'package:freezed_annotation/freezed_annotation.dart';
part 'certificado_lista_dto.freezed.dart';
part 'certificado_lista_dto.g.dart';

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

  /*Certificado toDomain() {
    return Certificado(
     
    );
  }*/
}