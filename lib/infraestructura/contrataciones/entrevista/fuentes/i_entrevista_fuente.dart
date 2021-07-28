import 'package:dartz/dartz.dart';
import 'package:officium_flutter/infraestructura/contrataciones/entrevista/modelos/detalle_propuesta_entrevista_empleado_dto.dart';

abstract class IEntrevistaFuente {
  //CONFIRMA PROPUESTA DE ENTREVISTA
  Future<Unit> confirmarPropuestaEntrevista(String uuidEntrevista);
  //RECHAZA PROPUESTA DE ENTREVISTA
  Future<Unit> rechazarPropuestaEntrevista(String uuidEntrevista);
  //OBTIENE DETALLE DE PROPUESTA DE ENTREVISTA
  Future<DetallePropuestaEntrevistaEmpleadoDTO> obtenerDetallePropuestaEntrevista(String uuidEntrevista);
}