part of 'renunciar_trabajo_bloc.dart';

@freezed
class RenunciarTrabajoEvent with _$RenunciarTrabajoEvent {
  const factory RenunciarTrabajoEvent.started() = _Started;
}