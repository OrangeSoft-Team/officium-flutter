import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';

abstract class IOfertaLaboralRepositorio {
  Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
      verTodasLasOfertasLaborales();

  Stream<Either<OfertaLaboralExcepcion, List<PostulacionOfertaLaboral>>>
      verTodasLasPostulacionesOfertaLaboral(Identificador uuidEmpleado);

  Future<Either<OfertaLaboralExcepcion, OfertaLaboral>>
      buscarOfertaLaboralConcreta(Identificador uuidOferta);

  Future<Either<OfertaLaboralExcepcion, Unit>> aplicarOfertaLaboral(
      Identificador uuidOferta,
      Identificador uuidEmpleado,
      Identificador uuidEmpresa,
      ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral);

  // Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
  //     buscarOfertaLaboralTitulo(TituloOfertaLaboral titulo);

  // Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
  //     buscarOfertaLaboralSueldo(Sueldo sueldoMin, Sueldo sueldoMax);

  // Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
  //     buscarOfertaLaboralCargo(Cargo cargo);

  // Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
  //     buscarOfertaLaboralDireccion(Direccion direccion);
}
