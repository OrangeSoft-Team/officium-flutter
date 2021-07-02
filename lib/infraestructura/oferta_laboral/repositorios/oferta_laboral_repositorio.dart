import 'package:officium_flutter/dominio/oferta_laboral/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/comun/entidades/direccion.dart';
import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/oferta_laboral/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/titulo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/sueldo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/fuentes/oferta_laboral_fuente.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_detalle_dto.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_dto.dart';

class OfertaLaboralRepositorio implements IOfertaLaboralRepositorio {
    final OfertaLaboralFuente fuenteDeDatos;

    OfertaLaboralRepositorio({
      required this.fuenteDeDatos,
    });

    @override
    Future<Either<OfertaLaboralExcepcion, Unit>> aplicarOfertaLaboral(Identificador uuidOferta) {
      // TODO: implement aplicarOfertaLaboral
      throw UnimplementedError();
    }
    //! RENOMBRAR A VER_DETALLE_OFERTA_LABORAL
    @override
    Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>> buscarOfertaLaboral() async* {
      //CHECK CONNECTIVITY
      throw UnimplementedError();
    }
    
    @override
    Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>> buscarOfertaLaboralCargo(Cargo cargo) {
      // TODO: implement buscarOfertaLaboralCargo
      throw UnimplementedError();
    }
  
    @override
    Future<Either<OfertaLaboralExcepcion, Unit>> buscarOfertaLaboralConcreta(Identificador uuidOferta) async {
      // TODO: implement buscarOfertaLaboralConcreta
      
      /*final OfertaLaboralDetalleDTO detalleOfertaLaboral;
      try {
        detalleOfertaLaboral = await fuenteDeDatos.obtenerDetalleOfertasLaboral(uuidOferta);
        return detalleOfertaLaboral.toDomain();
      }
      catch (e) {
         return Left(OfertaLaboralExcepcion.errorServidor());
      }*/
      throw UnimplementedError();
    }
  
    @override
    Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>> buscarOfertaLaboralDireccion(Direccion direccion) {
      // TODO: implement buscarOfertaLaboralDireccion
      throw UnimplementedError();
    }
  
    @override
    Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>> buscarOfertaLaboralSueldo(Sueldo sueldoMin, Sueldo sueldoMax) {
      // TODO: implement buscarOfertaLaboralSueldo
      throw UnimplementedError();
    }
  
    @override
    Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>> buscarOfertaLaboralTitulo(TituloOfertaLaboral titulo) {
      // TODO: implement buscarOfertaLaboralTitulo
      throw UnimplementedError();
    }
  
    @override
    Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>> verTodasLasOfertasLaborales() async* {
      final List<OfertaLaboral> ofertasLaborales = <OfertaLaboral>[];
      try {
        for (final ofertaLaboralDto in await fuenteDeDatos.obtenerOfertasLaborales()) {
          ofertasLaborales.add(ofertaLaboralDto.toDomain());
        }
        yield Right(ofertasLaborales);
      } catch (e) {
        yield Left(OfertaLaboralExcepcion.errorServidor());
      }
    }
    //! NO APLICA
    @override
    Stream<Either<OfertaLaboralExcepcion, List<PostulacionOfertaLaboral>>> verTodasLasPostulacionesOfertaLaboral(Identificador uuidEmpleado) {
    // TODO: implement verTodasLasPostulacionesOfertaLaboral
    throw UnimplementedError();
  } 

}