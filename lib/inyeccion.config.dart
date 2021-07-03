// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart'
    as _i12;
import 'aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart'
    as _i7;
import 'aplicacion/autentificacion/registro/registro_bloc.dart' as _i9;
import 'aplicacion/oferta_laboral/postular_oferta_laboral/postular_oferta_laboral_bloc.dart'
    as _i8;
import 'aplicacion/oferta_laboral/ver_detalle_oferta_laboral/ver_detalle_oferta_laboral_bloc.dart'
    as _i10;
import 'aplicacion/oferta_laboral/ver_ofertas_laborales/ver_ofertas_laborales_bloc.dart'
    as _i11;
import 'dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart'
    as _i3;
import 'dominio/oferta_laboral/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart'
    as _i5;
import 'infraestructura/autentificacion/http_request_fachada.dart' as _i4;
import 'infraestructura/oferta_laboral/repositorio_ofertas.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAutentificacionFachada>(() => _i4.HttpRequestFachada());
  gh.lazySingleton<_i5.IOfertaLaboralRepositorio>(
      () => _i6.OfertaLaboralRepositorio());
  gh.factory<_i7.IniciarSesionBloc>(
      () => _i7.IniciarSesionBloc(get<_i3.IAutentificacionFachada>()));
  gh.factory<_i8.PostularOfertaLaboralBloc>(() =>
      _i8.PostularOfertaLaboralBloc(get<_i5.IOfertaLaboralRepositorio>()));
  gh.factory<_i9.RegistroBloc>(
      () => _i9.RegistroBloc(get<_i3.IAutentificacionFachada>()));
  gh.factory<_i10.VerDetalleOfertaLaboralBloc>(() =>
      _i10.VerDetalleOfertaLaboralBloc(get<_i5.IOfertaLaboralRepositorio>()));
  gh.factory<_i11.VerOfertasLaboralesBloc>(
      () => _i11.VerOfertasLaboralesBloc(get<_i5.IOfertaLaboralRepositorio>()));
  gh.factory<_i12.EstadoAutentificacionBloc>(
      () => _i12.EstadoAutentificacionBloc(get<_i3.IAutentificacionFachada>()));
  return get;
}
