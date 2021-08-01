part of 'eliminar_experiencia_laboral_bloc.dart';

@freezed
class EliminarExperienciaLaboralEvent with _$EliminarExperienciaLaboralEvent {
  const factory EliminarExperienciaLaboralEvent.borrado(
      Identificador uuidExperienciaLaboral) = _Borrado;
}
