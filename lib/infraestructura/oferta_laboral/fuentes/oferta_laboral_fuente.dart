import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_dto.dart';

import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';

import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';

import 'i_oferta_laboral_fuente.dart';

const DIR_SPRING = 'orangesoft.ddns.net:3000';
const DIR_NEST = 'DIR_NEST/api';

@LazySingleton(as: IOfertaLaboralFuente)
class OfertaLaboralFuente implements IOfertaLaboralFuente {
  final http.Client cliente;

  OfertaLaboralFuente({required this.cliente});

  @override
  Future<Unit> aplicarOfertaLaboral(Identificador uuidOferta,
      PostulacionOfertaLaboralDTO postulacionOfertaLaboral) async {
    final response = await cliente.post(
        Uri.parse('$DIR_SPRING/ofertas_laborales/${uuidOferta.getOrCrash()}'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: postulacionOfertaLaboral);

    if (response.statusCode == 200) {
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
      return OfertaLaboralDetalleDTO.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<OfertaLaboralDTO>> obtenerOfertasLaborales() async {
    final List<OfertaLaboralDTO> listaDeOfertas = <OfertaLaboralDTO>[];

    final response = await cliente.get(
      Uri.parse('http://$DIR_SPRING/ofertas_laborales'),
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
    return listaDeOfertas;
  }
}
