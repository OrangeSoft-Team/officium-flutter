import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/infraestructura/comun/excepciones.dart';
import 'package:officium_flutter/infraestructura/contrataciones/trabajo/modelos/trabajo_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/trabajo/modelos/detalle_trabajo_empleado_dto.dart';

import 'i_trabajo_fuente.dart';
// ignore: constant_identifier_names
const DIR_SPRING = 'http://orangesoft.ddns.net:3000';
// ignore: constant_identifier_names
const DIR_NEST = 'http://officium-nest.ddns.net:2000';

@LazySingleton(as: ITrabajoFuente)
class TrabajoFuente implements ITrabajoFuente {
  final HttpClient cliente;
  TrabajoFuente({required this.cliente});

  @override
  Future<DetalleTrabajoEmpleadoDTO> obtenerDetalleTrabajo(String uuidTrabajo) async {

    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/trabajos/$uuidTrabajo')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");

    final response = await request.close();
    if (response.statusCode == 200) {
      final responseData = response.transform(utf8.decoder);
      final completer = Completer<String>();
      final contents = StringBuffer();

      responseData.listen((data) {
        contents.write(data);
      }, 
      onDone: () => completer.complete(contents.toString()));

      return DetalleTrabajoEmpleadoDTO.fromJson(jsonDecode(await completer.future) as Map<String, dynamic>);
      
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<TrabajoEmpleadoDTO>> obtenerTrabajosEmpleado() async {
    final List<TrabajoEmpleadoDTO> trabajosEmpleado = <TrabajoEmpleadoDTO>[];

    final request = await cliente.getUrl(
      Uri.parse('$DIR_NEST/api/empleado/trabajos')
    );
    request.headers
    .add(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");

    final response = await request.close();
    if (response.statusCode == 200) {
      final responseData = response.transform(utf8.decoder);
      final completer = Completer<String>();
      final contents = StringBuffer();

      responseData.listen((data) {
        contents.write(data);
      }, 
      onDone: () => completer.complete(contents.toString()));

      final List<Map<String, dynamic>> responseJson =
          List<Map<String, dynamic>>.from(jsonDecode(await completer.future) as List);

      for (final dto in responseJson) {
        trabajosEmpleado.add(TrabajoEmpleadoDTO.fromJson(dto));
      }

      return trabajosEmpleado;
      
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> renunciarTrabajoEmpleado(String uuidTrabajo) async  {
    
    final request = await cliente.putUrl(
      Uri.parse('$DIR_NEST/api/empleado/trabajo/$uuidTrabajo/renunciar')
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