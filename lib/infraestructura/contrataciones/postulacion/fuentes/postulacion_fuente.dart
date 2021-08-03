import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/infraestructura/comun/server_exception.dart';
import 'package:officium_flutter/infraestructura/contrataciones/postulacion/modelos/postulacion_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';
import 'i_postulacion_fuente.dart';

// ignore: constant_identifier_names
const DIR_SPRING = 'http://orangesoft.ddns.net:3000';
// ignore: constant_identifier_names
const DIR_NEST = 'http://officium-nest.ddns.net:2000';

@LazySingleton(as: IPostulacionFuente)
class PostulacionFuente implements IPostulacionFuente {
  final HttpClient cliente;
  PostulacionFuente({required this.cliente});

  @override
  Future<Unit> aplicarOfertaLaboral(
      PostulacionOfertaLaboralDTO postulacionOfertaLaboral) async {
    final bodyJson = jsonEncode(postulacionOfertaLaboral);

    final request = await cliente.postUrl(Uri.parse(
        "$DIR_SPRING/api/empleado/ofertas_laborales/${postulacionOfertaLaboral.uuidOfertaLaboral}"));

    request.headers
        .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    request.write(bodyJson);

    final response = await request.close();

    if (response.statusCode == 201) {
      return unit;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<PostulacionEmpleadoDTO>> obtenerPostulacionesActivasEmpleado(
      String uuidEmpleado) async {
    final List<PostulacionEmpleadoDTO> postulacionesActivas =
        <PostulacionEmpleadoDTO>[];

    final request = await cliente
        .getUrl(Uri.parse('$DIR_SPRING/api/empleado/postulaciones'));
    request.headers
        .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    final response = await request.close();
    if (response.statusCode == 200) {
      final responseData = response.transform(utf8.decoder);
      final completer = Completer<String>();
      final contents = StringBuffer();

      responseData.listen((data) {
        contents.write(data);
      }, onDone: () => completer.complete(contents.toString()));

      final List<Map<String, dynamic>> ofertasJson =
          List<Map<String, dynamic>>.from(
              jsonDecode(await completer.future) as List);

      for (final dto in ofertasJson) {
        postulacionesActivas.add(PostulacionEmpleadoDTO.fromJson(dto));
      }

      return postulacionesActivas;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> cancelarPostulacion(String uuidPostulacion) async {
    final request = await cliente.putUrl(Uri.parse(
        '$DIR_SPRING/api/empleado/oferta_laboral/$uuidPostulacion/cancelar'));
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
