import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/entrevista.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/trabajo.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_contratacion_repositorio.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';
import 'package:officium_flutter/infraestructura/contrataciones/entrevista/fuentes/i_entrevista_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/fuentes/i_contratacion_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/postulacion/fuentes/i_postulacion_fuente.dart';
import 'package:officium_flutter/infraestructura/contrataciones/trabajo/fuentes/i_trabajo_fuente.dart';


@LazySingleton(as: IContratacionesRepositorio)
class ContratacionRepositorio implements IContratacionesRepositorio {
  final IContratacionFuente fuenteDeDatos;
  final IPostulacionFuente fuenteDeDatosPostulacion;
  final ITrabajoFuente fuenteDeDatosTrabajo;
  final IEntrevistaFuente fuenteDeDatosEntrevista;

  ContratacionRepositorio({
    required this.fuenteDeDatos,
    required this.fuenteDeDatosPostulacion,
    required this.fuenteDeDatosTrabajo,
    required this.fuenteDeDatosEntrevista
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
      verTodasLasPostulacionesOfertaLaboral(Identificador uuidEmpleado) async* {
    final List<PostulacionOfertaLaboral> postulacionesActivasEmpleado = <PostulacionOfertaLaboral>[]; 
    try {
      final respuestaFuente = await fuenteDeDatosPostulacion.obtenerPostulacionesActivasEmpleado(uuidEmpleado.toString());
      for (final postulacionEmpleadoDto in respuestaFuente) {
        postulacionesActivasEmpleado.add(postulacionEmpleadoDto.toDomain());
      }
    }
    catch (e) {
      yield const Left(ContratacionExcepcion.errorServidor());
    }
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
  Future<Either<ContratacionExcepcion, Unit>> cancelarPostulacionOfertaLaboral(Identificador uuidPostulacion) async {
    try {
      final respuestaFuente = await fuenteDeDatosPostulacion.cancelarPostulacion(uuidPostulacion.toString());
      return const Right(unit);
    }
    catch (e) {
      return const Left(ContratacionExcepcion.errorServidor());
    }
  }

  @override
  Future<Either<ContratacionExcepcion, Unit>> cancelarPropuestaEntrevista(
      Identificador uuidEntrevista) async {
    try {
      final respuestaFuente = await fuenteDeDatosEntrevista.rechazarPropuestaEntrevista(uuidEntrevista.toString());
      return const Right(unit);
    }
    catch (e) {
      return const Left(ContratacionExcepcion.errorServidor());
    }
  }

  @override
  Future<Either<ContratacionExcepcion, Unit>> confirmarPropuestaEntrevista(Identificador uuidEntrevista) async {
    try {
      final respuestaFuente = await fuenteDeDatosEntrevista.confirmarPropuestaEntrevista(uuidEntrevista.toString());
      return const Right(unit);
    }
    catch (e) {
      return const Left(ContratacionExcepcion.errorServidor());
    }
  }

  @override
  Future<Either<ContratacionExcepcion, Entrevista>> consultarDetalleEntrevista(
      Identificador uuidEntrevista) async {
    try {
      final respuestaFuente = await fuenteDeDatosEntrevista.obtenerDetallePropuestaEntrevista(uuidEntrevista.toString());
      return Right(respuestaFuente.toDomain());
    }
    catch (e) {
      return const Left(ContratacionExcepcion.errorServidor());
    }
  }

  @override
  Future<Either<ContratacionExcepcion, Unit>> renunciarTrabajo(Identificador uuidTrabajo) async {
    try {
      final respuestaFuente = await fuenteDeDatosTrabajo.renunciarTrabajoEmpleado(uuidTrabajo.toString());
      return const Right(unit);
    }
    catch (e) {
      return const Left(ContratacionExcepcion.errorServidor());
    }
  }

  @override
  Stream<Either<ContratacionExcepcion, List<Trabajo>>>
      verTodosLosTrabajosEmpleado(Identificador uuidEmpleado) async* {
    final List<Trabajo> trabajosEmpleado = <Trabajo>[];
    try {
      final respuestaFuente = await fuenteDeDatosTrabajo.obtenerTrabajosEmpleado();
      for(final trabajoDto in respuestaFuente){
        trabajosEmpleado.add(trabajoDto.toDomain());
      }
    }
    catch (e) {
      yield const Left(ContratacionExcepcion.errorServidor());
    }
  }

  @override
  Stream<Either<ContratacionExcepcion, List<Entrevista>>>
      verTodasLasEntrevistasEmpleado(Identificador uuidEmpleado) async* {
    //NO CONTEMPLADO
    throw UnimplementedError();
  }
}
