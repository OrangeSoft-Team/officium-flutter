import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/autentificacion/excepciones_dominio/autentificacion_excepciones.dart';
import 'package:officium_flutter/dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart';
import 'package:officium_flutter/dominio/autentificacion/value_objecs/email.dart';
import 'package:officium_flutter/dominio/autentificacion/value_objecs/password.dart';

part 'iniciar_sesion_event.dart';
part 'iniciar_sesion_state.dart';
part 'iniciar_sesion_bloc.freezed.dart';

@injectable
class IniciarSesionBloc extends Bloc<IniciarSesionEvent, IniciarSesionState> {
  final IAutentificacionFachada _iAutentificacionFachada;
  IniciarSesionBloc(this._iAutentificacionFachada)
      : super(IniciarSesionState.inicial());

  @override
  Stream<IniciarSesionState> mapEventToState(
    IniciarSesionEvent event,
  ) async* {
    yield* event.map(
      emailCambiado: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.email),
          opcionDeErrorOExitoDeLogin: none(),
        );
      },
      passwordCambiado: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          opcionDeErrorOExitoDeLogin: none(),
        );
      },
      loginCorreoYClavePresionado: (e) async* {
        yield* _realizaAccionFachadaAutentificacionConEmailYPassword(
            _iAutentificacionFachada.loginConEmailAndPassword);
      },
    );
  }

  Stream<IniciarSesionState>
      _realizaAccionFachadaAutentificacionConEmailYPassword(
    Future<Either<ExcepcionAutentificacion, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async* {
    Either<ExcepcionAutentificacion, Unit> exitoOFallo;

    final esEmailValido = state.email.isValid();
    final esPasswordValido = state.password.isValid();

    if (esEmailValido && esPasswordValido) {
      yield state.copyWith(
        estaLogueando: true,
        opcionDeErrorOExitoDeLogin: none(),
      );

      exitoOFallo = await forwardedCall(
          emailAddress: state.email, password: state.password);

      yield state.copyWith(
          estaLogueando: false, opcionDeErrorOExitoDeLogin: some(exitoOFallo));
    }

    yield state.copyWith(
      estaLogueando: false,
      mostrarMensajesDeError: true,
      opcionDeErrorOExitoDeLogin: none(),
    );
  }
}
