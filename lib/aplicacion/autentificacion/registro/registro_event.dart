part of 'registro_bloc.dart';

@freezed
class RegistroEvent with _$RegistroEvent {
  const factory RegistroEvent.emailCambiado(String email) = _EmailCambiado;

  const factory RegistroEvent.passwordCambiado(String password) =
      _PasswordCambiado;

  const factory RegistroEvent.primerNombreCambiado(String primerNombre) =
      _PrimerNombreCambiado;

  const factory RegistroEvent.segundoNombreCambiado(String segundoNombre) =
      _SegundoNombreCambiado;

  const factory RegistroEvent.primerApellidoCambiado(String primerApellido) =
      _PrimerApellidoCambiado;

  const factory RegistroEvent.segundoApellidoCambiado(String segundoApellido) =
      _SegundoApellidoCambiado;

  const factory RegistroEvent.generoCambiado(String genero) = _GeneroCambiado;

  const factory RegistroEvent.nivelEducativoCambiado(String nivelEducativo) =
      _NivelEducativoCambiado;

  const factory RegistroEvent.direccionCalleCambiado(String direccionCalle) =
      _DireccionCalleCambiado;

  const factory RegistroEvent.telefonoCambiado(String telefono) =
      _TelefonoCambiado;

  const factory RegistroEvent.codigoPostalCambiado(String codigoPostal) =
      _CodigoPostalCambiado;

  const factory RegistroEvent.fechaNacimientoCambiado(
      DateTime fechaNacimiento) = _FechaNacimientoCambiado;

  const factory RegistroEvent.registrarConDatosBasicosPresionado() =
      _RegistrarConEmailYPasswortdPresionado;

  const factory RegistroEvent.registrarConGooglePresionado() =
      _RegistrarConGooglePresionado;
}
