part of 'experiencia_laboral_formulario.dart';

@freezed
class CrearExperienciaLaboralEvent with _$CrearExperienciaLaboralEvent {
  const factory CrearExperienciaLaboralEvent.inicializado(
          Option<ExperienciaLaboral> inicialOpcionExperienciaLaboral) =
      _Inicializado;
  const factory CrearExperienciaLaboralEvent.cargoCambiado(String cargoString) =
      _CargoCambiado;
  const factory CrearExperienciaLaboralEvent.nombreEmpresaCambiado(
      String nombreEmpresaString) = _NombreEmpresaCambiado;
  const factory CrearExperienciaLaboralEvent.fechaInicialCambiada(
      DateTime fechaInicial) = _FechaInicialCambiada;
  const factory CrearExperienciaLaboralEvent.guardado() = _Guardado;
}
