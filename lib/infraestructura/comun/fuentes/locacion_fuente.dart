import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/comun/modelos/habilidad_dto.dart';
import 'package:officium_flutter/infraestructura/comun/modelos/pais_dto.dart';
import 'package:officium_flutter/infraestructura/comun/modelos/estado_dto.dart';
import 'package:officium_flutter/infraestructura/comun/modelos/ciudad_dto.dart';
import 'package:officium_flutter/infraestructura/comun/response_parser.dart';

import 'i_comun_locaciones_fuente.dart';

const DIR_NEST = 'https://officium-nest.herokuapp.com';

@LazySingleton(as: IComunLocacionFuente)
class LocacionFuente implements IComunLocacionFuente {
  final HttpClient cliente;

  LocacionFuente({required this.cliente});

  @override
  Future<List<CiudadDTO>> obtenerCiudades(String uuidPais, String uuidEstado) async {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/paises/$uuidPais/estados/$uuidEstado/ciudades')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      final List<Map<String, dynamic>> ciudadesJson =
          List<Map<String, dynamic>>.from(jsonDecode(parsedData) as List);
      final List<CiudadDTO> ciudadesRegistradas = <CiudadDTO>[];

      for (final dto in ciudadesJson) {
        ciudadesRegistradas.add(CiudadDTO.fromJson(dto));
      }
      return ciudadesRegistradas;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<EstadoDTO>> obtenerEstados(String uuidPais) async {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/paises/$uuidPais/estados')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      final List<Map<String, dynamic>> estadosJson =
          List<Map<String, dynamic>>.from(jsonDecode(parsedData) as List);
      final List<EstadoDTO> estadosRegistrados = <EstadoDTO>[];

      for (final dto in estadosJson) {
        estadosRegistrados.add(EstadoDTO.fromJson(dto));
      }
      return estadosRegistrados;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<PaisDTO>> obtenerPaises() async  {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/paises')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      final List<Map<String, dynamic>> paisesJson =
        List<Map<String, dynamic>>.from(jsonDecode(parsedData) as List);
      final List<PaisDTO> paisesRegistrados = <PaisDTO>[];
      for (final dto in paisesJson) {
        paisesRegistrados.add(PaisDTO.fromJson(dto));
      }
      return paisesRegistrados;
    } else {
      throw ServerException();
    }
  }
}