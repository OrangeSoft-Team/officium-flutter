import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/fuentes/i_contratacion_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';

// ignore: constant_identifier_names
const DIR_SPRING = 'http://orangesoft.ddns.net';
// const DIR_SPRING = 'https://officium-spring.herokuapp.com';
// ignore: constant_identifier_names
const DIR_NEST = 'https://officium-nest.herokuapp.com';

@LazySingleton(as: IContratacionFuente)
class OfertaLaboralFuente implements IContratacionFuente {
  final http.Client cliente;

  OfertaLaboralFuente({required this.cliente});

  @override
  Future<Unit> aplicarOfertaLaboral(Identificador uuidOferta,
      PostulacionOfertaLaboralDTO postulacionOfertaLaboral) async {
    final client2 = HttpClient();
    final bodyJson = jsonEncode(postulacionOfertaLaboral);
    final request = await client2.postUrl(Uri.parse(
        "$DIR_SPRING/api/empleado/ofertas_laborales/${postulacionOfertaLaboral.uuidOfertaLaboral}/"));
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
  Future<OfertaLaboralDetalleDTO> obtenerDetalleOfertasLaboral(
      Identificador uuidOfertaLaboral) async {
    final response = await cliente.get(
      Uri.parse(
          '$DIR_SPRING/ofertas_laborales/${uuidOfertaLaboral.getOrCrash()}'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> ofertaLaboral =
          Map<String, dynamic>.from(jsonDecode(response.body) as Map);
      return OfertaLaboralDetalleDTO.fromJson(ofertaLaboral);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<OfertaLaboralDTO>> obtenerOfertasLaborales() async {
    final List<OfertaLaboralDTO> listaDeOfertas = <OfertaLaboralDTO>[];

    final response = await cliente.get(
      Uri.parse('$DIR_SPRING/api/empleado/ofertas_laborales/'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final List<Map<String, dynamic>> ofertasJson =
          List<Map<String, dynamic>>.from(jsonDecode(response.body) as List);
      for (final dto in ofertasJson) {
        listaDeOfertas.add(OfertaLaboralDTO.fromJson(dto));
      }
      return listaDeOfertas;
    } else {
      throw ServerException();
    }
  }
}
