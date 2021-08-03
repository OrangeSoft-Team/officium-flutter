part of 'ver_todos_los_trabajos_empleado_bloc.dart';

@freezed
class VerTodosLosTrabajosEmpleadoEvent with _$VerTodosLosTrabajosEmpleadoEvent {
  const factory VerTodosLosTrabajosEmpleadoEvent.verTodosLosTrabajosEmpezado(
      Identificador uuidEmpleado) = _VerTodosLosTrabajosEmpezado;
  const factory VerTodosLosTrabajosEmpleadoEvent.trabajosRecibidos(
          Either<ContratacionExcepcion, List<Trabajo>> trabajosOExcepciones) =
      _TrabajosRecibidos;
}
