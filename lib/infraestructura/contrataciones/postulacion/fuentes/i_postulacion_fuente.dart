import 'package:dartz/dartz.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/postulacion/modelos/postulacion_empleado_dto.dart';

abstract class IPostulacionFuente {
  //REGISTRA POSTULACION DE EMPLEADO PARA OFERTA LABORAL
  Future<Unit> aplicarOfertaLaboral(PostulacionOfertaLaboralDTO postulacionOfertaLaboral);
  //OBTIENE POSTULACIONES ACTIVAS DE UN EMPLEADO ESPECIFICO
  Future<List<PostulacionEmpleadoDTO>> obtenerPostulacionesActivasEmpleado(String  uuidEmpleado); 
}
