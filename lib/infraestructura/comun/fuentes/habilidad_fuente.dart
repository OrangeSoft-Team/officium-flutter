import 'dart:convert';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/comun/fuentes/i_comun_habilidad_fuente.dart';
import 'package:officium_flutter/infraestructura/comun/modelos/habilidad_dto.dart';
import 'package:officium_flutter/infraestructura/comun/response_parser.dart';

const DIR_NEST = 'https://officium-nest.herokuapp.com';

@LazySingleton(as: IComunHabilidadFuente)
class HabilidadFuente implements IComunHabilidadFuente {
  final HttpClient cliente;

  HabilidadFuente({required this.cliente});

  @override
  Future<List<HabilidadDTO>> obtenerHabilidades() async {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/habilidades/')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      final List<Map<String, dynamic>> habilidadesJson =
          List<Map<String, dynamic>>.from(jsonDecode(parsedData) as List);
      final List<HabilidadDTO> habilidadesRegistradas = <HabilidadDTO>[];

      for (final dto in habilidadesJson) {
        habilidadesRegistradas.add(HabilidadDTO.fromJson(dto));
      }
      return habilidadesRegistradas;
    } else {
      throw ServerException();
    }
  }
}