
import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/comun/response_parser.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/modelos/experiencia_laboral_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/modelos/crear_experiencia_laboral_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/modelos/actualizar_experiencia_laboral_empleado_dto.dart';

import 'i_experiencia_laboral_fuente.dart';

// ignore: constant_identifier_names
const DIR_SPRING = 'http://orangesoft.ddns.net:3000';
// ignore: constant_identifier_names
const DIR_NEST = 'http://officium-nest.ddns.net:2000';

@LazySingleton(as: IExperienciaLaboralFuente)
class ExperienciaLaboralFuente implements IExperienciaLaboralFuente {
  final HttpClient cliente;

  ExperienciaLaboralFuente({required this.cliente});

  @override
  Future<ExperienciaLaboralEmpleadoDTO> actualizarExperienciaLaboral(String uuidExperienciaLaboral,ActualizarExperienciaLaboralEmpleadoDTO experienciaActualizada) async {
    final request = await cliente.putUrl(
      Uri.parse('$DIR_NEST/api/empleado/experiencias_laborales/$uuidExperienciaLaboral')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    request.write(jsonEncode(experienciaActualizada));

    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      return ExperienciaLaboralEmpleadoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ExperienciaLaboralEmpleadoDTO> crearExperienciaLaboral(CrearExperienciaLaboralEmpleadoDTO nuevaExperienciaLaboral) async {
    final request = await cliente.postUrl(
      Uri.parse('$DIR_NEST/api/empleado/experiencias_laborales/')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    request.write(jsonEncode(nuevaExperienciaLaboral));

    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      return ExperienciaLaboralEmpleadoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> eliminarExperienciaLaboral(String uuidExperienciaLaboral) async {
    final request = await cliente.deleteUrl(
      Uri.parse('$DIR_NEST/api/empleado/experiencias_laborales/$uuidExperienciaLaboral')
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
  Future<List<ExperienciaLaboralEmpleadoDTO>> obtenerExperienciasLaborales(String uuidEmpleado) async {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/experiencias_laborales/')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");

    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      final List<Map<String, dynamic>> experienciasLaboralesJson =
          List<Map<String, dynamic>>.from(jsonDecode(parsedData) as List);
      final List<ExperienciaLaboralEmpleadoDTO> cursosDisponibles = <ExperienciaLaboralEmpleadoDTO>[];

      for (final dto in experienciasLaboralesJson) {
        cursosDisponibles.add(ExperienciaLaboralEmpleadoDTO.fromJson(dto));
      }

      return cursosDisponibles;
    } else {
      throw ServerException();
    }
  }
}