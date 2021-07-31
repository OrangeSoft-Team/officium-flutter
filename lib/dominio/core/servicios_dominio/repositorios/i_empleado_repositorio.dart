import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/core/entidades/empleado.dart';
import 'package:officium_flutter/dominio/core/entidades/experiencia_laboral.dart';
import 'package:officium_flutter/dominio/core/entidades/habilidad.dart';
import 'package:officium_flutter/dominio/core/excepciones_dominio/empleado_excepciones.dart';

abstract class IEmpleadoRepositorio {
  Future<Either<EmpleadoExcepcion, Empleado>> verDatosBasicosEmpleado(
      Identificador uuidEmpleado);

  Stream<Either<EmpleadoExcepcion, List<Habilidad>>> verTodasHabilidades();

  Stream<Either<EmpleadoExcepcion, List<Habilidad>>> verHabilidadesEmpleado(
      Identificador uuidEmpleado);

  Future<Either<EmpleadoExcepcion, Unit>> actualizarListaHabilidadesEmpleado(
      List<Identificador> listaHabilidades);

  Stream<Either<EmpleadoExcepcion, List<ExperienciaLaboral>>>
      verExperienciasLaboralesEmpleado(Identificador uuidEmpleado);

  Future<Either<EmpleadoExcepcion, Unit>> crearExperienciaLaboral(
      ExperienciaLaboral experienciaLaboral);

  Future<Either<EmpleadoExcepcion, Unit>> actualizarExperienciaLaboral(
      ExperienciaLaboral experienciaLaboral);

  Future<Either<EmpleadoExcepcion, Unit>> eliminarExperienciaLaboral(
      Identificador uuidExperienciaLaboral);
}
