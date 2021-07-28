import 'package:dartz/dartz.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/cuestionario_curso_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/detalle_curso_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/leccion_curso_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/lista_curso_dto.dart';
import 'package:officium_flutter/infraestructura/mooc/cursos/modelos/respuestas_cuestionario_dto.dart';

abstract class ICursoFuente {
  //OBTIENE CURSOS DISPONIBLES
  Future<List<ListaCursoDTO>> obtenerCursosDisponibles();
  //OBTIENE DETALLE DE CURSO CONCRETO
  Future<DetalleCursoDTO> obtenerDetalleCurso(String uuidCurso);
  //INSCRIBE A UN EMPLEADO EN UN CURSO
  Future<Unit> inscribirEmpleadoCurso(String uuidCurso);
  //OBTIENE LECCION PARTICULAR DE CURSO CONCRETO
  Future<LeccionCursoDTO> obtenerLeccionCurso(String uuidCurso, String uuidLeccion);
  //OBTIENE CUESTIONARIO EVALUATIVO DE CURSO CONCRETO
  Future<CuestionarioCursoDTO> obtenerCuestionarioCurso(String uuidCurso);
  //ENVIA RESPUESTAS DE CUESTIONARIO EVALUATIVO 
  Future<Unit> responderCuestionarioCurso(String uuidCurso, String uuidCuestionario, List<RespuestasCuestionarioDTO> respuestasCuestionario);
}