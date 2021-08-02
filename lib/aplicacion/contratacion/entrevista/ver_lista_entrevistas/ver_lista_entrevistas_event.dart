part of 'ver_lista_entrevistas_bloc.dart';

@freezed
class VerListaEntrevistasEvent with _$VerListaEntrevistasEvent {
  const factory VerListaEntrevistasEvent.verTodasLasEntrevistasEmpezado(
      Identificador uuidEmpleado) = _VerTodasLasEntrevistasEmpezado;

  const factory VerListaEntrevistasEvent.entrevistasRecibidas(
      Either<ContratacionExcepcion, List<Entrevista>>
          entrevistasOExcepcion) = _EntrevistasRecibidas;
}
