import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/entidades/ciudad.dart';
import 'package:officium_flutter/dominio/comun/entidades/estado.dart';
import 'package:officium_flutter/dominio/comun/entidades/pais.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/comun_excepcion.dart';

abstract class IDatosGeograficosRepositorio {
  Stream<Either<ComunExcepcion, List<Pais>>> verListaPaises();
  Stream<Either<ComunExcepcion, List<Ciudad>>> verListaCiudades();
  Stream<Either<ComunExcepcion, List<Estado>>> verListaEstados();
}
