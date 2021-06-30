part of 'registro_bloc.dart';

@freezed
class RegistroState with _$RegistroState {
  const factory RegistroState({
    required Empleado empleado,
    required EmailAddress emailAddress,
    required Password password,
    required bool mostrarMensajesError,
    required bool estaEnviando,
    required Option<Either<ExcepcionAutentificacion, Unit>>
        opcionDeErrorOExitoDeRegistro,
  }) = _RegistroState;

  factory RegistroState.inicial() => RegistroState(
      empleado: Empleado.vacio(),
      emailAddress: EmailAddress(''),
      password: Password(''),
      mostrarMensajesError: false,
      estaEnviando: false,
      opcionDeErrorOExitoDeRegistro: none());
}
