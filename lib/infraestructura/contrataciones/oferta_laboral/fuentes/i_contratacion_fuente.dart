import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';

abstract class IContratacionFuente {
  //OBTIENE OFERTAS LABORALES PARA EL USUARIO
  Future<List<OfertaLaboralDTO>> obtenerOfertasLaborales();
  //OBTIENE OFERTA LABORAL CON DETALLE ADICIONAL
  Future<OfertaLaboralDetalleDTO> obtenerDetalleOfertasLaboral(
      Identificador uuidOfertaLaboral); //!
  //REGISTRA POSTULACION DE EMPLEADO PARA OFERTA LABORAL
  Future<Unit> aplicarOfertaLaboral(Identificador uuidOferta,
      PostulacionOfertaLaboralDTO postulacionOfertaLaboral); //!
}
