part of 'ver_todos_los_trabajos_empleado_bloc.dart';

@freezed
class VerTodosLosTrabajosEmpleadoState with _$VerTodosLosTrabajosEmpleadoState {
  const factory VerTodosLosTrabajosEmpleadoState.inicial() = _Inicial;
  const factory VerTodosLosTrabajosEmpleadoState.cargaEnProgreso() =
      _CargaEnProgreso;
  const factory VerTodosLosTrabajosEmpleadoState.cargaExitosa(
      List<Trabajo> trabajosEmpleado) = _CargaExitosa;
  const factory VerTodosLosTrabajosEmpleadoState.cargaFallida(
      ContratacionExcepcion trabajosExcepcion) = _CargaFallida;
}
