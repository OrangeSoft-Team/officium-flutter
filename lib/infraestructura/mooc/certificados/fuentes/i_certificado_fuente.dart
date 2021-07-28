import 'package:officium_flutter/infraestructura/mooc/certificados/modelos/certificado_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/certificados/modelos/certificado_lista_dto.dart';

abstract class ICertificadoFuente {
  //OBTIENE DETALLE DE CERTIFICADO CONCRETO
  Future<CertificadoDTO> obtenerDetalleCertificado(String uuidCertificado);
  //OBTIENE CERTIFICADOS OBTENIDOS DE UN EMPLEADO CONCRETO
  Future<List<CertificadoListaDTO>> obtenerCertificadosEmpleado();
}