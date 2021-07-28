import 'dart:convert';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/infraestructura/comun/response_parser.dart';
import 'package:officium_flutter/infraestructura/comun/server_exception.dart';
import 'package:officium_flutter/infraestructura/mooc/certificados/modelos/certificado_lista_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/certificados/modelos/certificado_dto.dart';

import 'i_certificado_fuente.dart';

// ignore: constant_identifier_names
const DIR_SPRING = 'http://orangesoft.ddns.net:3000';
// ignore: constant_identifier_names
const DIR_NEST = 'http://officium-nest.ddns.net:2000';

@LazySingleton(as: ICertificadoFuente)
class CertificadoFuente implements ICertificadoFuente {
  final HttpClient cliente;

  CertificadoFuente({required this.cliente});

  @override
  Future<List<CertificadoListaDTO>> obtenerCertificadosEmpleado() async {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/certificado/')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");

    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      final List<Map<String, dynamic>> certificadosJson =
          List<Map<String, dynamic>>.from(jsonDecode(parsedData) as List);
      final List<CertificadoListaDTO> certificados = <CertificadoListaDTO>[];
      for (final dto in certificadosJson) {
        certificados.add(CertificadoListaDTO.fromJson(dto));
      }
      return certificados;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<CertificadoDTO> obtenerDetalleCertificado(String uuidCertificado) async  {
     final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/certificado/$uuidCertificado')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      return CertificadoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }
}