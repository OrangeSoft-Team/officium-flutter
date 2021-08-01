part of 'consultar_experiencia_laboral_bloc.dart';

@freezed
class ConsultarExperienciaLaboralEvent with _$ConsultarExperienciaLaboralEvent {
  const factory ConsultarExperienciaLaboralEvent.verTodasLasExperienciasLaboralesEmpezado(
      Identificador uuidEmpleado) = _VerTodasLasExperienciasLaboralesEmpezado;

  const factory ConsultarExperienciaLaboralEvent.experienciasLaboralesRecibidas(
      Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
          postulacionesOExcepcion) = _ExperienciasLaboralesRecibidas;
}
