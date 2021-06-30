part of 'iniciar_sesion_bloc.dart';

@freezed
class IniciarSesionEvent with _$IniciarSesionEvent {
  const factory IniciarSesionEvent.emailCambiado(String email) = _EmailCambiado;
  const factory IniciarSesionEvent.passwordCambiado(String password) =
      _PasswordCambiado;
  const factory IniciarSesionEvent.loginCorreoYClavePresionado() =
      _LoginCorreoYClavePresionado;
}
