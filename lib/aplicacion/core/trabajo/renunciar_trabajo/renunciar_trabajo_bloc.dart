import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'renunciar_trabajo_event.dart';
part 'renunciar_trabajo_state.dart';
part 'renunciar_trabajo_bloc.freezed.dart';

class RenunciarTrabajoBloc extends Bloc<RenunciarTrabajoEvent, RenunciarTrabajoState> {
  RenunciarTrabajoBloc() : super(_Initial());

  @override
  Stream<RenunciarTrabajoState> mapEventToState(
    RenunciarTrabajoEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
