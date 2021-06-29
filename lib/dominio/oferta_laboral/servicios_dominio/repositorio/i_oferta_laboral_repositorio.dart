import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/direccion.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/oferta_laboral/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/dominio/oferta_laboral/oferta_laboral.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value%20objects/cargo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value%20objects/sueldo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value%20objects/titulo.dart';

abstract class IOfertaLaboralRepositorio {
  Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
      verTodasLasOfertasLaborales();
  Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
      buscarOfertaLaboral();
  Future<Either<OfertaLaboralExcepcion, Unit>> buscarOfertaLaboralConcreta(
      Identificador uuidOferta);
  Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
      buscarOfertaLaboralTitulo(TituloOfertaLaboral titulo);
  Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
      buscarOfertaLaboralSueldo(Sueldo sueldoMin, Sueldo sueldoMax);
  Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
      buscarOfertaLaboralCargo(Cargo cargo);
  Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
      buscarOfertaLaboralDireccion(Direccion direccion);
}
