import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/comun/response_parser.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/respuestas_cuestionario_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/lista_curso_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/leccion_curso_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/detalle_curso_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/cuestionario_curso_dto.dart';

import 'i_curso_fuente.dart';
// ignore: constant_identifier_names
const DIR_SPRING = 'http://orangesoft.ddns.net:3000';
// ignore: constant_identifier_names
const DIR_NEST = 'http://officium-nest.ddns.net:2000';

@LazySingleton(as: ICursoFuente)
class CursoFuente implements ICursoFuente {
  final HttpClient cliente;

  CursoFuente({required this.cliente});

  @override
  Future<Unit> inscribirEmpleadoCurso(String uuidCurso) async  {
    final request = await cliente.postUrl(
      Uri.parse('$DIR_NEST/api/empleado/curso/$uuidCurso/inscribirse')
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
  Future<CuestionarioCursoDTO> obtenerCuestionarioCurso(String uuidCurso) async  {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/curso/$uuidCurso/cuestionario')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");

    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      return CuestionarioCursoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ListaCursoDTO>> obtenerCursosDisponibles() async {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/cursos/')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");

    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      final List<Map<String, dynamic>> cursosDisponiblesJson =
          List<Map<String, dynamic>>.from(jsonDecode(parsedData) as List);
      final List<ListaCursoDTO> cursosDisponibles = <ListaCursoDTO>[];

      for (final dto in cursosDisponiblesJson) {
        cursosDisponibles.add(ListaCursoDTO.fromJson(dto));
      }

      return cursosDisponibles;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<DetalleCursoDTO> obtenerDetalleCurso(String uuidCurso) async {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/curso/$uuidCurso')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");

    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      return DetalleCursoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<LeccionCursoDTO> obtenerLeccionCurso(String uuidCurso, String uuidLeccion) async {
    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/curso/$uuidCurso/leccion/$uuidLeccion')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    final response = await request.close();
    if (response.statusCode == 200) {
      final parsedData = await ResponseParser.parseResponse(response);
      return LeccionCursoDTO.fromJson(jsonDecode(parsedData) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> responderCuestionarioCurso(String uuidCurso, String uuidCuestionario, List<RespuestasCuestionarioDTO> respuestasCuestionario) async {
    final request = await cliente.postUrl(
      Uri.parse('$DIR_NEST/api/empleado/curso/$uuidCurso/cuestionario/$uuidCuestionario')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    request.write(jsonEncode(respuestasCuestionario));

    final response = await request.close();
    if (response.statusCode == 200) {
      return unit;
    } else {
      throw ServerException();
    }
  }
}