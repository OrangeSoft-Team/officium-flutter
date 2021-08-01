part of 'experiencia_laboral_formulario.dart';

@freezed
class CrearExperienciaLaboralState with _$CrearExperienciaLaboralState {
  const factory CrearExperienciaLaboralState({
    required ExperienciaLaboral experienciaLaboral,
    required bool mostrarMensajesError,
    required bool estaActualizando,
    required bool estaGuardando,
    required Option<Either<EmpleadoExcepcion, Unit>>
        guardadoFallidoOExitosoOpcion,
  }) = _CrearExperienciaLaboralState;

  factory CrearExperienciaLaboralState.inicial() =>
      CrearExperienciaLaboralState(
        experienciaLaboral: ExperienciaLaboral.vacio(),
        mostrarMensajesError: false,
        estaActualizando: false,
        estaGuardando: false,
        guardadoFallidoOExitosoOpcion: none(),
      );
}
