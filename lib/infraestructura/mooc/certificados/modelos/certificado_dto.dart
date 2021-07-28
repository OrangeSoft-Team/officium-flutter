import 'package:freezed_annotation/freezed_annotation.dart';
part 'certificado_dto.freezed.dart';
part 'certificado_dto.g.dart';


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
  
  /*factory CertificadoDTO.fromDomain(Certificado Certificado) {
    return CertificadoDTO(
     
    );
  }*/

  /*Certificado toDomain() {
    return Certificado(
     
    );
  }*/
}