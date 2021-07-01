part of 'estado_autentificacion_bloc.dart';

@freezed
class EstadoAutentificacionState with _$EstadoAutentificacionState {
  const factory EstadoAutentificacionState.inicial() = _Inicial;
  const factory EstadoAutentificacionState.autenticado() = _Autenticado;
  const factory EstadoAutentificacionState.noautenticado() = _NoAutenticado;
}
