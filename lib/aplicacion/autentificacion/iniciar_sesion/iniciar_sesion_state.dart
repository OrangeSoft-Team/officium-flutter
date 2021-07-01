part of 'iniciar_sesion_bloc.dart';

@freezed
class IniciarSesionState with _$IniciarSesionState {
  const factory IniciarSesionState({
    required EmailAddress email,
    required Password password,
    required bool estaLogueando,
    required bool mostrarMensajesDeError,
    required Option<Either<ExcepcionAutentificacion, Unit>>
        opcionDeErrorOExitoDeLogin,
  }) = _IniciarSesionState;

  factory IniciarSesionState.inicial() => IniciarSesionState(
        email: EmailAddress(''),
        password: Password(''),
        estaLogueando: false,
        mostrarMensajesDeError: false,
        opcionDeErrorOExitoDeLogin: none(),
      );
}
