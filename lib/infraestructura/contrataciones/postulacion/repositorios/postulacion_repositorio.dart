import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';
import 'package:officium_flutter/infraestructura/contrataciones/oferta_laboral/modelos/postulacion_oferta_laboral_dto.dart';
import 'package:officium_flutter/infraestructura/contrataciones/postulacion/fuentes/i_postulacion_fuente.dart';


abstract class IPostulacionRepositorio {
  Stream<Either<OfertaLaboralExcepcion, List<PostulacionOfertaLaboral>>> verTodasLasPostulacionesEmpleado(Identificador uuidEmpleado);

  Future<Either<OfertaLaboralExcepcion, Unit>> aplicarOfertaLaboral(
    Identificador uuidOferta,
    Identificador uuidEmpleado,
    Identificador uuidEmpresa,
    ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral);
}

@LazySingleton(as: IPostulacionRepositorio)
class PostulacionRepositorio implements IPostulacionRepositorio {
  final IPostulacionFuente fuenteDeDatos;
  
  PostulacionRepositorio({
    required this.fuenteDeDatos,
  });

  @override
  Future<Either<OfertaLaboralExcepcion, Unit>> aplicarOfertaLaboral(
    Identificador uuidOferta, 
    Identificador uuidEmpleado, 
    Identificador uuidEmpresa, 
    ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral) async {

    final PostulacionOfertaLaboralDTO nuevaPostulacionOfertaLaboral;
    try {
      //REEMPLAZAR POR MAPEO DE DOMINIO A DTO PARA POSTULACION
      nuevaPostulacionOfertaLaboral = PostulacionOfertaLaboralDTO(
          uuidOfertaLaboral: uuidOferta.getOrCrash(),
          uuidEmpleado: uuidEmpleado.getOrCrash(),
          uuidEmpresa: uuidEmpresa.getOrCrash(),
          comentario: comentarioPostulacionOfertaLaboral?.getOrCrash());
      final result = await fuenteDeDatos.aplicarOfertaLaboral(nuevaPostulacionOfertaLaboral);
      return Right(result);
    } catch (e) {
      return const Left(OfertaLaboralExcepcion.errorServidor());
    }
  }

  @override
  Stream<Either<OfertaLaboralExcepcion, List<PostulacionOfertaLaboral>>> verTodasLasPostulacionesEmpleado(Identificador uuidEmpleado) {
    /*
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
    */
    throw UnimplementedError();
  } 
}