import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/entrevista.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/fuentes/i_contratacion_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';

//Steven
@LazySingleton(as: IContratacionesRepositorio)
class ContratacionRepositorio implements IContratacionesRepositorio {
  final IContratacionFuente fuenteDeDatos;

  ContratacionRepositorio({
    required this.fuenteDeDatos,
  });

  @override
  Future<Either<ContratacionExcepcion, Unit>> aplicarOfertaLaboral(
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
      return const Left(ContratacionExcepcion.errorServidor());
    }
  }

  @override
  Stream<Either<ContratacionExcepcion, List<OfertaLaboral>>>
      verTodasLasOfertasLaborales() async* {
    final List<OfertaLaboral> ofertasLaborales = <OfertaLaboral>[];
    try {
      for (final ofertaLaboralDto
          in await fuenteDeDatos.obtenerOfertasLaborales()) {
        ofertasLaborales.add(ofertaLaboralDto.toDomain());
      }
      yield Right(ofertasLaborales);
    } catch (e) {
      yield const Left(ContratacionExcepcion.errorServidor());
    }
  }

  @override
  Stream<Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>>
      verTodasLasPostulacionesOfertaLaboral(Identificador uuidEmpleado) {
    // TODO: implement verTodasLasPostulacionesOfertaLaboral
    throw UnimplementedError();
  }

  @override
  Future<Either<ContratacionExcepcion, OfertaLaboral>> verDetalleOfertaLaboral(
      Identificador uuidOferta) async {
    final OfertaLaboralDetalleDTO ofertasLaboralDetalle;
    try {
      ofertasLaboralDetalle =
          await fuenteDeDatos.obtenerDetalleOfertasLaboral(uuidOferta);
      return Right(ofertasLaboralDetalle.toDomain());
    } catch (e) {
      return const Left(ContratacionExcepcion.errorServidor());
    }
  }

  @override
  Future<Either<ContratacionExcepcion, Unit>> cancelarPostulacionOfertaLaboral(
      Identificador uuidPostulacion) {
    // TODO: implement cancelarPostulacionOfertaLaboral
    throw UnimplementedError();
  }

  @override
  Future<Either<ContratacionExcepcion, Unit>> cancelarPropuestaEntrevista(
      Identificador uuidEntrevista) {
    // TODO: implement cancelarPropuestaEntrevista
    throw UnimplementedError();
  }

  @override
  Future<Either<ContratacionExcepcion, Unit>> confirmarPropuestaEntrevista(
      Identificador uuidEntrevista) {
    // TODO: implement confirmarPropuestaEntrevista
    throw UnimplementedError();
  }

  @override
  Future<Either<ContratacionExcepcion, Entrevista>> consultarDetalleEntrevista(
      Identificador uuidEntrevista) {
    // TODO: implement consultarDetalleEntrevista
    throw UnimplementedError();
  }

  @override
  Future<Either<ContratacionExcepcion, Unit>> renunciarTrabajo(
      Identificador uuidTrabajo) {
    // TODO: implement renunciarTrabajo
    throw UnimplementedError();
  }

  @override
  Stream<Either<ContratacionExcepcion, List<OfertaLaboral>>>
      verTodosLosTrabajosEmpleado(Identificador uuidEmpleado) {
    // TODO: implement verTodosLosTrabajosEmpleado
    throw UnimplementedError();
  }

  @override
  Stream<Either<ContratacionExcepcion, List<Entrevista>>>
      verTodasLasEntrevistasEmpleado(Identificador uuidEmpleado) {
    // TODO: implement verTodasLasEntrevistasEmpleado
    throw UnimplementedError();
  }
}
