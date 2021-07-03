import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/oferta_laboral/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';
import 'package:officium_flutter/infraestructura/oferta_laboral/modelos/oferta_laboral_dto.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/elementos/lista_ofertas.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/elementos/mock.dart';

@LazySingleton(as: IOfertaLaboralRepositorio)
class OfertaLaboralRepositorio implements IOfertaLaboralRepositorio {
  late List<OfertaLaboral> listOfertas;
  @override
  Future<Either<OfertaLaboralExcepcion, Unit>> aplicarOfertaLaboral(
      Identificador uuidOferta,
      Identificador uuidEmpleado,
      Identificador uuidEmpresa,
      ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral) {
    // TODO: implement aplicarOfertaLaboral
    throw UnimplementedError();
  }

  @override
  Future<Either<OfertaLaboralExcepcion, OfertaLaboral>>
      buscarOfertaLaboralConcreta(Identificador uuidOferta) {
    // TODO: implement buscarOfertaLaboralConcreta
    throw UnimplementedError();
  }

  @override
  Stream<Either<OfertaLaboralExcepcion, List<OfertaLaboral>>>
      verTodasLasOfertasLaborales() async* {
    listOfertas.add(ofertaLaboralMock);
    yield right<OfertaLaboralExcepcion, List<OfertaLaboral>>(listOfertas);
  }

  @override
  Stream<Either<OfertaLaboralExcepcion, List<PostulacionOfertaLaboral>>>
      verTodasLasPostulacionesOfertaLaboral(Identificador uuidEmpleado) {
    // TODO: implement verTodasLasPostulacionesOfertaLaboral
    throw UnimplementedError();
  }
}
