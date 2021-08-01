part of 'eliminar_experiencia_laboral_bloc.dart';

@freezed
class EliminarExperienciaLaboralState with _$EliminarExperienciaLaboralState {
  const factory EliminarExperienciaLaboralState.initial() = _Initial;
  const factory EliminarExperienciaLaboralState.accionEnProgreso() =
      _AccionEnProgreso;
  const factory EliminarExperienciaLaboralState.falloAlBorrar(
      EmpleadoExcepcion excepcionBorrar) = _FalloAlBorrar;
  const factory EliminarExperienciaLaboralState.borradoExitoso() =
      _BorradoExitoso;
}
