import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/entrevista.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/fuentes/i_oferta_laboral_fuente.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';

//Steven
@LazySingleton(as: IContratacionesRepositorio)
class OfertaLaboralRepositorio implements IContratacionesRepositorio {
  final IOfertaLaboralFuente fuenteDeDatos;

  OfertaLaboralRepositorio({
    required this.fuenteDeDatos,
  });

  @override
  Future<Either<OfertaLaboralExcepcion, Unit>> aplicarOfertaLaboral(
      Identificador uuidOferta,
      Identificador uuidEmpleado,
      Identificador uuidEmpresa,
      ComentarioPostulacionOfertaLaboral?
          comentarioPostulacionOfertaLaboral) async {
    final PostulacionOfertaLaboralDTO nuevaPostulacionOfertaLaboral;

    try {
      nuevaPostulacionOfertaLaboral = PostulacionOfertaLaboralDTO(
          uuidOfertaLaboral: uuidOferta.getOrCrash(),
          uuidEmpleado: uuidEmpleado.getOrCrash(),
          uuidEmpresa: uuidEmpresa.getOrCrash(),
          comentario: comentarioPostulacionOfertaLaboral?.getOrCrash());
      final result = await fuenteDeDatos.aplicarOfertaLaboral(
          uuidOferta, nuevaPostulacionOfertaLaboral);
      return Right(result);
    } catch (e) {
      return const Left(OfertaLaboralExcepcion.errorServidor());
    }
  }

  // @override
  // Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
  //     verTodasLasOfertasLaborales() async* {
  //   final List<OfertaLaboral> ofertasLaborales = listOfertas;
  //   try {
  //     yield Right(ofertasLaborales);
  //   } catch (e) {
  //     yield const Left(OfertaLaboralExcepcion.errorServidor());
  //   }
  // }
  @override
  Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
      verTodasLasOfertasLaborales() async* {
    final List<OfertaLaboral> ofertasLaborales = <OfertaLaboral>[];
    try {
      for (final ofertaLaboralDto
          in await fuenteDeDatos.obtenerOfertasLaborales()) {
        ofertasLaborales.add(ofertaLaboralDto.toDomain());
      }
      yield Right(ofertasLaborales);
    } catch (e) {
      yield const Left(OfertaLaboralExcepcion.errorServidor());
    }
  }

  @override
  Stream<Either<OfertaLaboralExcepcion, List<PostulacionOfertaLaboral>>>
      verTodasLasPostulacionesOfertaLaboral(Identificador uuidEmpleado) {
    // TODO: implement verTodasLasPostulacionesOfertaLaboral
    throw UnimplementedError();
  }

  @override
  Future<Either<OfertaLaboralExcepcion, OfertaLaboral>> verDetalleOfertaLaboral(
      Identificador uuidOferta) async {
    final OfertaLaboralDetalleDTO ofertasLaboralDetalle;
    try {
      ofertasLaboralDetalle =
          await fuenteDeDatos.obtenerDetalleOfertasLaboral(uuidOferta);
      return Right(ofertasLaboralDetalle.toDomain());
    } catch (e) {
      return const Left(OfertaLaboralExcepcion.errorServidor());
    }
  }

  @override
  Future<Either<OfertaLaboralExcepcion, Unit>> cancelarPostulacionOfertaLaboral(
      Identificador uuidPostulacion) {
    // TODO: implement cancelarPostulacionOfertaLaboral
    throw UnimplementedError();
  }

  @override
  Future<Either<OfertaLaboralExcepcion, Unit>> cancelarPropuestaEntrevista(
      Identificador uuidEntrevista) {
    // TODO: implement cancelarPropuestaEntrevista
    throw UnimplementedError();
  }

  @override
  Future<Either<OfertaLaboralExcepcion, Unit>> confirmarPropuestaEntrevista(
      Identificador uuidEntrevista) {
    // TODO: implement confirmarPropuestaEntrevista
    throw UnimplementedError();
  }

  @override
  Future<Either<OfertaLaboralExcepcion, Entrevista>> consultarDetalleEntrevista(
      Identificador uuidEntrevista) {
    // TODO: implement consultarDetalleEntrevista
    throw UnimplementedError();
  }

  @override
  Future<Either<OfertaLaboralExcepcion, Unit>> renunciarTrabajo(
      Identificador uuidTrabajo) {
    // TODO: implement renunciarTrabajo
    throw UnimplementedError();
  }

  @override
  Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
      verTodosLosTrabajosEmpleado(Identificador uuidEmpleado) {
    // TODO: implement verTodosLosTrabajosEmpleado
    throw UnimplementedError();
  }
}
