part of 'ver_perfil_empleado_bloc.dart';

@freezed
class VerPerfilEmpleadoState with _$VerPerfilEmpleadoState {
  const factory VerPerfilEmpleadoState.initial() = _Initial;
  const factory VerPerfilEmpleadoState.cargandoPerfil() = _CargandoPerfil;
  const factory VerPerfilEmpleadoState.perfilEmpleadoCargado(
      Empleado perfilEmpleado) = _PerfilEmpleadoCargado;
  const factory VerPerfilEmpleadoState.cargaFallidaPerfilEmpleado(
      EmpleadoExcepcion empleadoExcepcion) = _CargaFallidaPerfilEmpleado;
}
