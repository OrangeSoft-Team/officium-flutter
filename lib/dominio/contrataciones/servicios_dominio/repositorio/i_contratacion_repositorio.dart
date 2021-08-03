import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/entrevista.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/trabajo.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';

abstract class IContratacionesRepositorio {
  //Ofertas Laborales
  Stream<Either<ContratacionExcepcion, List<OfertaLaboral>>>
      verTodasLasOfertasLaborales();

  Future<Either<ContratacionExcepcion, OfertaLaboral>> verDetalleOfertaLaboral(
      Identificador uuidOferta);

  //Trabajos
  Stream<Either<ContratacionExcepcion, List<Trabajo>>>
      verTodosLosTrabajosEmpleado(Identificador uuidEmpleado);

  Future<Either<ContratacionExcepcion, Unit>> renunciarTrabajo(
      Identificador uuidTrabajo);

  //Postulaciones
  Future<Either<ContratacionExcepcion, Unit>> aplicarOfertaLaboral(
      Identificador uuidOferta,
      Identificador uuidEmpleado,
      Identificador uuidEmpresa,
      ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral);

  Future<Either<ContratacionExcepcion, Unit>> cancelarPostulacionOfertaLaboral(
      Identificador uuidPostulacion);

  Stream<Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>>
      verTodasLasPostulacionesOfertaLaboral(Identificador uuidEmpleado);

  //Entrevista
  Future<Either<ContratacionExcepcion, Unit>> cancelarPropuestaEntrevista(
      Identificador uuidEntrevista);

  Future<Either<ContratacionExcepcion, Unit>> confirmarPropuestaEntrevista(
      Identificador uuidEntrevista);

  Future<Either<ContratacionExcepcion, Entrevista>> consultarDetalleEntrevista(
      Identificador uuidEntrevista);

  Stream<Either<ContratacionExcepcion, List<Entrevista>>>
      verTodasLasEntrevistasEmpleado(Identificador uuidEmpleado);
}
