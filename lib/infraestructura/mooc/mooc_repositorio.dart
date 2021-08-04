import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/mooc/entidades/respuesta_cuestionario.dart';
import 'package:officium_flutter/dominio/mooc/excepciones_dominio/mooc_excepciones.dart';
import 'package:officium_flutter/dominio/mooc/entidades/leccion.dart';
import 'package:officium_flutter/dominio/mooc/entidades/curso.dart';
import 'package:officium_flutter/dominio/mooc/entidades/cuestionario.dart';
import 'package:officium_flutter/dominio/mooc/entidades/certificado.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/servicios_dominio/repositorios/i_mooc_repositorio.dart';
import 'package:officium_flutter/infraestructura/comun/local_storage/fuentes/i_fuente_local.dart';
import 'package:officium_flutter/infraestructura/mooc/certificados/fuentes/i_certificado_fuente.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/respuestas_cuestionario_dto.dart';

import 'cursos/fuentes/i_curso_fuente.dart';

@LazySingleton(as: IMoocRepositorio)
class MoocRepositorio implements IMoocRepositorio {
  final ICursoFuente fuenteDeDatosCurso;
  final ICertificadoFuente fuenteDeDatosCertificado;
  final IFuenteLocal fuenteLocal;
  
  MoocRepositorio({
    required this.fuenteDeDatosCurso,
    required this.fuenteDeDatosCertificado,
    required this.fuenteLocal
  });

  @override
  Future<Either<MoocExcepcion, Cuestionario>> consultarCuestionario(Identificador uuidCurso) async {
   try{
    final respuestaFuente = await fuenteDeDatosCurso.obtenerCuestionarioCurso(uuidCurso.toString());
    return Right(respuestaFuente.toDomain());
   }
   catch (e) {
    return const Left(MoocExcepcion.errorServidor());
   }
  }

  @override
  Future<Either<MoocExcepcion, Unit>> inscribirseCurso(Identificador uuidCurso) async {
    try {
      final respuestaFuente = await fuenteDeDatosCurso.inscribirEmpleadoCurso(uuidCurso.toString());
      return const Right(unit);
    }
    catch (e) {
      return const Left(MoocExcepcion.errorInscripcionCurso());
    }
  }

  @override
  Future<Either<MoocExcepcion, Unit>> responderCuestionario(Identificador uuidCuestionario,
    Identificador uuidCurso,
    List<RespuestaCuestionario> respuestasCuestionario) async {
      final List<RespuestasCuestionarioDTO> respuestasCuestionarioDto = <RespuestasCuestionarioDTO>[];
      
      for(final respuesta in respuestasCuestionario){
        respuestasCuestionarioDto.add(RespuestasCuestionarioDTO.fromDomain(respuesta));
      }

      try {
        final respuestaFuente = await fuenteDeDatosCurso.responderCuestionarioCurso(uuidCurso.toString(), uuidCuestionario.toString(), respuestasCuestionarioDto);
        return const Right(unit);
      }
      catch (e) {
        return const Left(MoocExcepcion.errorServidor());
      }
  }

  @override
  Future<Either<MoocExcepcion, Certificado>> verDetalleCertificado(Identificador uuidCertificado) async {
   try{
    final respuestaFuente = await fuenteDeDatosCertificado.obtenerDetalleCertificado(uuidCertificado.toString());
    return Right(respuestaFuente.toDomain());
   }
   catch (e) {
    return const Left(MoocExcepcion.errorServidor());
   }
  }

  @override
  Future<Either<MoocExcepcion, Curso>> verDetalleCurso(Identificador uuidCurso) async {
   try{
    final respuestaFuente = await fuenteDeDatosCurso.obtenerDetalleCurso(uuidCurso.toString());
    return Right(respuestaFuente.toDomain());
   }
   catch (e) {
    return const Left(MoocExcepcion.errorServidor());
   }
  }

  @override
  Stream<Either<MoocExcepcion, List<Certificado>>> verTodosLosCertificadosEmpleado(Identificador uuidEmpleado) async* {
   final List<Certificado> certificadosEmpleado = <Certificado>[];
   try{
    final respuestaFuente = await fuenteDeDatosCertificado.obtenerCertificadosEmpleado();
    for (final certificadoDto in respuestaFuente) {
      certificadosEmpleado.add(certificadoDto.toDomain());
    }
    yield Right(certificadosEmpleado);
   }
   catch (e) {
    yield const Left(MoocExcepcion.errorServidor());
   }
  }

  @override
  Stream<Either<MoocExcepcion, List<Curso>>> verTodosLosCursos() async* {
   final List<Curso> cursosDisponibles = <Curso>[];
   try{
    final respuestaFuente = await fuenteDeDatosCurso.obtenerCursosDisponibles();
    for (final listaCursoDto in respuestaFuente) {
      cursosDisponibles.add(listaCursoDto.toDomain());
    }
    yield Right(cursosDisponibles);
   }
   catch (e) {
    yield const Left(MoocExcepcion.errorServidor());
   }
  }

  @override
  Future<Either<MoocExcepcion, Leccion>> consultarDetalleLeccion(Identificador uuidCurso, Identificador uuidLeccion) async {
    try{
    final respuestaFuente = await fuenteDeDatosCurso.obtenerLeccionCurso(uuidCurso.toString(), uuidLeccion.toString());
    return Right(respuestaFuente.toDomain());
   }
   catch (e) {
    return const Left(MoocExcepcion.errorServidor());
   }
  }
}