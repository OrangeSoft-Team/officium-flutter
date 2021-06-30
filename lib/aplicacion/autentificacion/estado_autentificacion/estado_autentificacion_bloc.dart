import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart';

part 'estado_autentificacion_event.dart';
part 'estado_autentificacion_state.dart';
part 'estado_autentificacion_bloc.freezed.dart';

class EstadoAutentificacionBloc
    extends Bloc<EstadoAutentificacionEvent, EstadoAutentificacionState> {
  final IAutentificacionFachada iAutentificacionFachada;
  EstadoAutentificacionBloc(this.iAutentificacionFachada)
      : super(const _Inicial());

  @override
  Stream<EstadoAutentificacionState> mapEventToState(
    EstadoAutentificacionEvent event,
  ) async* {
    event.map(
      verificacionDeAutenticacionSolicitada: (e) async* {
        final empleadoOption =
            await iAutentificacionFachada.getUsuarioLogueado();
        yield empleadoOption.fold(
            () => const EstadoAutentificacionState.noautenticado(),
            (_) => const EstadoAutentificacionState.autenticado());
      },
      cerrarSesion: (e) async* {
        await iAutentificacionFachada.signOut();
        yield const EstadoAutentificacionState.noautenticado();
      },
    );
  }
}
