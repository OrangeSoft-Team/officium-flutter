part of 'estado_autentificacion_bloc.dart';

@freezed
class EstadoAutentificacionEvent with _$EstadoAutentificacionEvent {
  const factory EstadoAutentificacionEvent.verificacionDeAutenticacionSolicitada() =
      _VerificacionDeAutenticacionSolicitadautenticado;
  const factory EstadoAutentificacionEvent.cerrarSesion() = _CerrarSesion;
}
