part of 'ver_perfil_empleado_bloc.dart';

@freezed
class VerPerfilEmpleadoEvent with _$VerPerfilEmpleadoEvent {
  const factory VerPerfilEmpleadoEvent.verPerfilIniciado(
      Identificador uuidEmpleado) = _VerPerfilIniciado;
}