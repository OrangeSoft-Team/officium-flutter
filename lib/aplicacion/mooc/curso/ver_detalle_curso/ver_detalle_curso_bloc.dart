import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ver_detalle_curso_event.dart';
part 'ver_detalle_curso_state.dart';
part 'ver_detalle_curso_bloc.freezed.dart';

class VerDetalleCursoBloc extends Bloc<VerDetalleCursoEvent, VerDetalleCursoState> {
  VerDetalleCursoBloc() : super(_Initial());

  @override
  Stream<VerDetalleCursoState> mapEventToState(
    VerDetalleCursoEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
