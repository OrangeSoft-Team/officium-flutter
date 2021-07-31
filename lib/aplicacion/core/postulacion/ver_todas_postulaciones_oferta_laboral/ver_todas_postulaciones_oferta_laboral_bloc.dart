import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ver_todas_postulaciones_oferta_laboral_event.dart';
part 'ver_todas_postulaciones_oferta_laboral_state.dart';
part 'ver_todas_postulaciones_oferta_laboral_bloc.freezed.dart';

class VerTodasPostulacionesOfertaLaboralBloc extends Bloc<VerTodasPostulacionesOfertaLaboralEvent, VerTodasPostulacionesOfertaLaboralState> {
  VerTodasPostulacionesOfertaLaboralBloc() : super(_Initial());

  @override
  Stream<VerTodasPostulacionesOfertaLaboralState> mapEventToState(
    VerTodasPostulacionesOfertaLaboralEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
