import 'package:dartz/dartz.dart';
import 'package:officium_flutter/infraestructura/contrataciones/trabajo/modelos/detalle_trabajo_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/trabajo/modelos/trabajo_empleado_dto.dart';

abstract class ITrabajoFuente {
  //OBTIENE TRABAJOS EN LOS QUE HA PARTICIPADO UN EMPLEADO
  Future<List<TrabajoEmpleadoDTO>> obtenerTrabajosEmpleado();
  //OBTIENE EL DETALLE DE UN TRABAJO EN PARTICULAR
  Future<DetalleTrabajoEmpleadoDTO> obtenerDetalleTrabajo(String uuidTrabajo);
  //EMITE LA RENUNCIA DE UN EMPLEADO PARA UN TRABAJO PARTICULAR
  Future<Unit> renunciarTrabajoEmpleado(String uuidTrabajo);
}