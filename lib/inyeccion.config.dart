// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart'
    as _i10;
import 'aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart'
    as _i8;
import 'aplicacion/autentificacion/registro/registro_bloc.dart' as _i9;
import 'aplicacion/oferta_laboral/postular_oferta_laboral/postular_oferta_laboral_bloc.dart'
    as _i13;
import 'aplicacion/oferta_laboral/ver_detalle_oferta_laboral/ver_detalle_oferta_laboral_bloc.dart'
    as _i14;
import 'aplicacion/oferta_laboral/ver_ofertas_laborales/ver_ofertas_laborales_bloc.dart'
    as _i15;
import 'dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart'
    as _i4;
import 'dominio/contrataciones/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart'
    as _i11;
import 'infraestructura/autentificacion/http_request_fachada.dart' as _i5;
import 'infraestructura/oferta_laboral/fuentes/i_oferta_laboral_fuente.dart'
    as _i6;
import 'infraestructura/oferta_laboral/fuentes/modulo_repo_htttp.dart' as _i16;
import 'infraestructura/oferta_laboral/fuentes/oferta_laboral_fuente.dart'
    as _i7;
import 'infraestructura/oferta_laboral/repositorios/oferta_laboral_repositorio.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpModuloInjectable = _$HttpModuloInjectable();
  gh.lazySingleton<_i3.Client>(() => httpModuloInjectable.cliente);
  gh.lazySingleton<_i4.IAutentificacionFachada>(() => _i5.HttpRequestFachada());
  gh.lazySingleton<_i6.IOfertaLaboralFuente>(
      () => _i7.OfertaLaboralFuente(cliente: get<_i3.Client>()));
  gh.factory<_i8.IniciarSesionBloc>(
      () => _i8.IniciarSesionBloc(get<_i4.IAutentificacionFachada>()));
  gh.factory<_i9.RegistroBloc>(
      () => _i9.RegistroBloc(get<_i4.IAutentificacionFachada>()));
  gh.factory<_i10.EstadoAutentificacionBloc>(
      () => _i10.EstadoAutentificacionBloc(get<_i4.IAutentificacionFachada>()));
  gh.lazySingleton<_i11.IContratacionesRepositorio>(() =>
      _i12.OfertaLaboralRepositorio(
          fuenteDeDatos: get<_i6.IOfertaLaboralFuente>()));
  gh.factory<_i13.PostularOfertaLaboralBloc>(() =>
      _i13.PostularOfertaLaboralBloc(get<_i11.IContratacionesRepositorio>()));
  gh.factory<_i14.VerDetalleOfertaLaboralBloc>(() =>
      _i14.VerDetalleOfertaLaboralBloc(get<_i11.IContratacionesRepositorio>()));
  gh.factory<_i15.VerOfertasLaboralesBloc>(() =>
      _i15.VerOfertasLaboralesBloc(get<_i11.IContratacionesRepositorio>()));
  return get;
}

class _$HttpModuloInjectable extends _i16.HttpModuloInjectable {}
