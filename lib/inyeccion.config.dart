// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart'
    as _i5;
import 'dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart'
    as _i3;
import 'infraestructura/autentificacion/http_request_fachada.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAutentificacionFachada>(() => _i4.HttpRequestFachada());
  gh.factory<_i5.IniciarSesionBloc>(
      () => _i5.IniciarSesionBloc(get<_i3.IAutentificacionFachada>()));
  return get;
}
