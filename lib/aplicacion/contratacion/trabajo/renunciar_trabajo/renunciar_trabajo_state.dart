part of 'renunciar_trabajo_bloc.dart';

@freezed
class RenunciarTrabajoState with _$RenunciarTrabajoState {
  const factory RenunciarTrabajoState.inicial() = _Inicial;
  const factory RenunciarTrabajoState.accionEnProgreso() = _AccionEnProgreso;
  const factory RenunciarTrabajoState.trabajoRenunciadoExitosamente() =
      _TrabajoRenunciadoExitosamente;
  const factory RenunciarTrabajoState.falloRenunciarTrabajo(
      ContratacionExcepcion contratacionExcepcion) = _FalloRenunciarTrabajo;
}
