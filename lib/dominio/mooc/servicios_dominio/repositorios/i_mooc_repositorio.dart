import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/mooc/entidades/certificado.dart';
import 'package:officium_flutter/dominio/mooc/entidades/cuestionario.dart';
import 'package:officium_flutter/dominio/mooc/entidades/curso.dart';
import 'package:officium_flutter/dominio/mooc/entidades/leccion.dart';
import 'package:officium_flutter/dominio/mooc/entidades/respuesta_cuestionario.dart';
import 'package:officium_flutter/dominio/mooc/excepciones_dominio/mooc_excepciones.dart';

abstract class IMoocRepositorio {
  //Cursos
  Stream<Either<MoocExcepcion, List<Curso>>> verTodosLosCursos();

  Future<Either<MoocExcepcion, Curso>> verDetalleCurso(Identificador uuidCurso);

  Future<Either<MoocExcepcion, Unit>> inscribirseCurso(Identificador uuidCurso);

  //Cuestionario
  Future<Either<MoocExcepcion, Cuestionario>> consultarCuestionario(
      Identificador uuidCurso);

  Future<Either<MoocExcepcion, Unit>> responderCuestionario(
    Identificador uuidCuestionario,
    Identificador uuidCurso,
    List<RespuestaCuestionario> respuestasCuestionario,
  );

  //Lecciones
  Future<Either<MoocExcepcion, Leccion>> consultarDetalleLeccion(
    Identificador uuidCurso,
    Identificador uuidLeccion,
  );

  //Certificado
  Stream<Either<MoocExcepcion, List<Certificado>>>
      verTodosLosCertificadosEmpleado(Identificador uuidEmpleado);

  Future<Either<MoocExcepcion, Certificado>> verDetalleCertificado(
      Identificador uuidCertificado);
}
