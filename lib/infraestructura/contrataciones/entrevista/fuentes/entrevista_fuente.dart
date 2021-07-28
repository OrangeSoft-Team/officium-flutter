import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/comun/response_parser.dart';
import 'package:officium_flutter/infraestructura/contrataciones/entrevista/modelos/detalle_propuesta_entrevista_empleado_dto.dart';

import 'i_entrevista_fuente.dart';
// ignore: constant_identifier_names
const DIR_SPRING = 'http://orangesoft.ddns.net:3000';
// ignore: constant_identifier_names
const DIR_NEST = 'http://officium-nest.ddns.net:2000';

@LazySingleton(as: IEntrevistaFuente)
class EntrevistaFuente implements IEntrevistaFuente {
  final HttpClient cliente;
  EntrevistaFuente({required this.cliente});

  @override
  Future<Unit> confirmarPropuestaEntrevista(String uuidEntrevista) async {
    final request = await cliente.putUrl(
      Uri.parse('$DIR_NEST/api/empleado/entrevista/$uuidEntrevista/aceptar')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    final response = await request.close();
    if (response.statusCode == 200) {
      return unit;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<DetallePropuestaEntrevistaEmpleadoDTO> obtenerDetallePropuestaEntrevista(String uuidEntrevista) async {
   final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/entrevista/$uuidEntrevista')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      return DetallePropuestaEntrevistaEmpleadoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> rechazarPropuestaEntrevista(String uuidEntrevista) async {
    final request = await cliente.putUrl(
      Uri.parse('$DIR_NEST/api/empleado/entrevista/$uuidEntrevista/rechazar')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    final response = await request.close();
    if (response.statusCode == 200) {
      return unit;
    } else {
      throw ServerException();
    }
  }
}