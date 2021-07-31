import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancelar_postulacion_oferta_laboral_event.dart';
part 'cancelar_postulacion_oferta_laboral_state.dart';
part 'cancelar_postulacion_oferta_laboral_bloc.freezed.dart';

class CancelarPostulacionOfertaLaboralBloc extends Bloc<CancelarPostulacionOfertaLaboralEvent, CancelarPostulacionOfertaLaboralState> {
  CancelarPostulacionOfertaLaboralBloc() : super(_Initial());

  @override
  Stream<CancelarPostulacionOfertaLaboralState> mapEventToState(
    CancelarPostulacionOfertaLaboralEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
