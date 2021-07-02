  
import 'dart:convert';

import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_dto.dart';

import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';

import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;

import 'i_oferta_laboral_fuente.dart';

const DIR_SPRING = 'DIR_SPRING/api';
const DIR_NEST = 'DIR_NEST/api';

class OfertaLaboralFuente implements IOfertaLaboralFuente { 
  final http.Client cliente; 
  
  OfertaLaboralFuente({
    required this.cliente
  });

  @override
  Future<Unit> aplicarOfertaLaboral(Identificador uuidEmpleado, Identificador uuidOfertaLaboral) {
      // TODO: implement aplicarOfertaLaboral
      throw UnimplementedError();
  }
  
  @override
  Future<OfertaLaboralDetalleDTO> obtenerDetalleOfertasLaboral(Identificador uuidOfertaLaboral) async {
    final response = await cliente.get(
      Uri.parse('$DIR_SPRING/ofertas_laborales/${uuidOfertaLaboral.getOrCrash()}'),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    
    if (response.statusCode == 200) {
      return OfertaLaboralDetalleDTO.fromJson(json.decode(response.body) as Map<String,dynamic>);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<OfertaLaboralDTO>> obtenerOfertasLaborales() async {
    final List<OfertaLaboralDTO> listaDeOfertas = <OfertaLaboralDTO>[];

    final response = await cliente.get(
      Uri.parse('$DIR_SPRING/ofertas_laborales'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      for (final dto in json.decode(response.body) as List<Map<String,dynamic>>) {
         listaDeOfertas.add(OfertaLaboralDTO.fromJson(dto));
      }
      return listaDeOfertas;
    } else {
      throw ServerException();
    }

  }

}