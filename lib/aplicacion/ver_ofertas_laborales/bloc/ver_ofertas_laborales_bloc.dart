import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ver_ofertas_laborales_event.dart';
part 'ver_ofertas_laborales_state.dart';
part 'ver_ofertas_laborales_bloc.freezed.dart';

class VerOfertasLaboralesBloc extends Bloc<VerOfertasLaboralesEvent, VerOfertasLaboralesState> {
  VerOfertasLaboralesBloc() : super(_Initial());

  @override
  Stream<VerOfertasLaboralesState> mapEventToState(
    VerOfertasLaboralesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
