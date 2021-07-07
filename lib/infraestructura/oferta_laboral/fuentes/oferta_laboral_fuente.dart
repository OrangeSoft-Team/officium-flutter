import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';

import 'i_oferta_laboral_fuente.dart';

// ignore: constant_identifier_names
const DIR_SPRING = 'http://orangesoft.ddns.net:3000';
// ignore: constant_identifier_names
const DIR_NEST = 'http://officium-nest.ddns.net:2000';

@LazySingleton(as: IOfertaLaboralFuente)
class OfertaLaboralFuente implements IOfertaLaboralFuente {
  final http.Client cliente;

  OfertaLaboralFuente({required this.cliente});

  @override
  Future<Unit> aplicarOfertaLaboral(Identificador uuidOferta,
      PostulacionOfertaLaboralDTO postulacionOfertaLaboral) async {
    final client2 = HttpClient();
    final bodyJson = jsonEncode(postulacionOfertaLaboral);
    final request = await client2.postUrl(Uri.parse("$DIR_NEST/postulaciones"));
    request.headers
        .set(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
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
    final OfertaLaboralDetalleDTO detalleOferta;
    final response = await cliente.get(
      Uri.parse(
          '$DIR_NEST/api/empleado/ofertas_laborales/${uuidOfertaLaboral.getOrCrash()}'),
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

    // if (response.statusCode == 200) {
    //   return OfertaLaboralDetalleDTO.fromJson(
    //       json.decode(response.body) as Map<String, dynamic>);
    // } else {
    //   throw ServerException();
    // }
  }

  @override
  Future<List<OfertaLaboralDTO>> obtenerOfertasLaborales() async {
    final List<OfertaLaboralDTO> listaDeOfertas = <OfertaLaboralDTO>[];

    final response = await cliente.get(
      Uri.parse('$DIR_NEST/api/empleado/ofertas_laborales'),
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
