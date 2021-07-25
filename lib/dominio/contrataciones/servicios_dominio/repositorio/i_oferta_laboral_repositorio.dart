import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';

abstract class IContratacionesRepositorio {
  Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
      verTodasLasOfertasLaborales();

  Future<Either<OfertaLaboralExcepcion, OfertaLaboral>>
      buscarOfertaLaboralConcreta(Identificador uuidOferta);

  Stream<Either<OfertaLaboralExcepcion, List<PostulacionOfertaLaboral>>>
      verTodasLasPostulacionesOfertaLaboral(Identificador uuidEmpleado);

  Future<Either<OfertaLaboralExcepcion, Unit>> aplicarOfertaLaboral(
      Identificador uuidOferta,
      Identificador uuidEmpleado,
      Identificador uuidEmpresa,
      ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral);
}
