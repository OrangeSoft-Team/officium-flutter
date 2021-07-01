part of 'iniciar_sesion_bloc.dart';

@freezed
class IniciarSesionEvent with _$IniciarSesionEvent {
  const factory IniciarSesionEvent.emailCambiado(String email) = EmailCambiado;
  const factory IniciarSesionEvent.passwordCambiado(String password) =
      PasswordCambiado;
  const factory IniciarSesionEvent.loginCorreoYClavePresionado() =
      LoginCorreoYClavePresionado;
}
