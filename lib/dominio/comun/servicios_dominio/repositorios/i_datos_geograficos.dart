import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/entidades/ciudad.dart';
import 'package:officium_flutter/dominio/comun/entidades/estado.dart';
import 'package:officium_flutter/dominio/comun/entidades/pais.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/comun_excepcion.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';

abstract class IDatosGeograficosRepositorio {
  Stream<Either<ComunExcepcion, List<Pais>>> verListaPaises();
  Stream<Either<ComunExcepcion, List<Ciudad>>> verListaCiudades(Identificador uuidPais,Identificador uuidEstado);
  Stream<Either<ComunExcepcion, List<Estado>>> verListaEstados(Identificador uuidPais);
}
