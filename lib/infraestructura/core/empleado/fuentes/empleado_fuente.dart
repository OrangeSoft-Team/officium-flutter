import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/comun/response_parser.dart';
import 'package:officium_flutter/infraestructura/core/empleado/modelos/actualizar_habilidades_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/empleado/modelos/datos_basicos_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/empleado/modelos/habilidades_empleado_dto.dart';
import 'i_empleado_fuente.dart';

// ignore: constant_identifier_names
const DIR_NEST = 'http://officium-nest.ddns.net:2000';


@LazySingleton(as: IEmpleadoFuente)
class EmpleadoFuente implements IEmpleadoFuente {
  
  final HttpClient cliente;
  EmpleadoFuente({required this.cliente});

  @override
  Future<DatosBasicosEmpleadoDTO> obtenerDatosBasicosEmpleado(String uuidEmpleado) async {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/perfil')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");

    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);

      return DatosBasicosEmpleadoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<HabilidadesEmpleadoDTO> actualizarHabilidadesEmpleado(ActualizarHabilidadesEmpleadoDTO habilidadesActualizadas) async {
    final request = await cliente.putUrl(
      Uri.parse('$DIR_NEST/api/empleado/habilidades')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    request
      .write(jsonEncode(habilidadesActualizadas));

    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      return HabilidadesEmpleadoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<HabilidadesEmpleadoDTO> obtenerHabilidadesEmpleado(String uuidEmpleado) async {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/habilidades')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");

    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      return HabilidadesEmpleadoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }

}