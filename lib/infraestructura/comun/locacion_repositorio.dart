
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/comun_excepcion.dart';
import 'package:officium_flutter/dominio/comun/entidades/pais.dart';
import 'package:officium_flutter/dominio/comun/entidades/estado.dart';
import 'package:officium_flutter/dominio/comun/entidades/ciudad.dart';
import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/repositorios/i_datos_geograficos.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/infraestructura/comun/fuentes/i_comun_locaciones_fuente.dart';


@LazySingleton(as: IDatosGeograficosRepositorio)
class LocacionRepositorio implements IDatosGeograficosRepositorio {
  final IComunLocacionFuente fuenteDeDatos;

  LocacionRepositorio({
    required this.fuenteDeDatos,
  });

  @override
  Stream<Either<ComunExcepcion, List<Ciudad>>> verListaCiudades(Identificador uuidPais,Identificador uuidEstado) async* {
    final List<Ciudad> ciudades = <Ciudad>[];
   try{
    final respuestaFuente = await fuenteDeDatos.obtenerCiudades(uuidPais.toString(),uuidEstado.toString());
    for (final ciudadDto in respuestaFuente) {
      ciudades.add(ciudadDto.toDomain());
    }
    yield Right(ciudades);
   }
   catch (e) {
    yield const Left(ComunExcepcion.errorServidor());
   }
  }

  @override
  Stream<Either<ComunExcepcion, List<Estado>>> verListaEstados(Identificador uuidPais) async* {
   final List<Estado> estados = <Estado>[];
   try{
    final respuestaFuente = await fuenteDeDatos.obtenerEstados(uuidPais.toString());
    for (final estadoDto in respuestaFuente) {
      estados.add(estadoDto.toDomain());
    }
    yield Right(estados);
   }
   catch (e) {
    yield const Left(ComunExcepcion.errorServidor());
   }
  }

  @override
  Stream<Either<ComunExcepcion, List<Pais>>> verListaPaises() async*{
   final List<Pais> paises = <Pais>[];
   try{
    final respuestaFuente = await fuenteDeDatos.obtenerPaises();
    for (final paisDto in respuestaFuente) {
      paises.add(paisDto.toDomain());
    }
    yield Right(paises);
   }
   catch (e) {
    yield const Left(ComunExcepcion.errorServidor());
   }
  }
}