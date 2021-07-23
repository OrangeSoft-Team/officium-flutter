// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:io' as _i8;

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart'
    as _i27;
import 'aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart'
    as _i22;
import 'aplicacion/autentificacion/registro/registro_bloc.dart' as _i24;
import 'aplicacion/oferta_laboral/postular_oferta_laboral/postular_oferta_laboral_bloc.dart'
    as _i23;
import 'aplicacion/oferta_laboral/ver_detalle_oferta_laboral/ver_detalle_oferta_laboral_bloc.dart'
    as _i25;
import 'aplicacion/oferta_laboral/ver_ofertas_laborales/ver_ofertas_laborales_bloc.dart'
    as _i26;
import 'dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart'
    as _i4;
import 'dominio/oferta_laboral/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart'
    as _i17;
import 'infraestructura/autentificacion/http_request_fachada.dart' as _i5;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/i_oferta_laboral_fuente.dart'
    as _i15;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/modulo_repo_htttp.dart'
    as _i28;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/oferta_laboral_fuente.dart'
    as _i16;
import 'infraestructura/contrataciones/oferta_laboral/repositorios/oferta_laboral_repositorio.dart'
    as _i18;
import 'infraestructura/contrataciones/postulacion/fuentes/i_postulacion_fuente.dart'
    as _i19;
import 'infraestructura/contrataciones/postulacion/fuentes/postulacion_fuente.dart'
    as _i20;
import 'infraestructura/contrataciones/postulacion/repositorios/postulacion_repositorio.dart'
    as _i21;
import 'infraestructura/core/empleado/fuentes/empleado_fuente.dart' as _i14;
import 'infraestructura/core/empleado/fuentes/i_empleado_fuente.dart' as _i13;
import 'infraestructura/mooc/certificados/fuentes/certificado_fuente.dart'
    as _i7;
import 'infraestructura/mooc/certificados/fuentes/i_certificado_fuente.dart'
    as _i6;
import 'infraestructura/mooc/certificados/repositorio/certificado_repositorio.dart'
    as _i9;
import 'infraestructura/mooc/cursos/fuentes/curso_fuente.dart' as _i11;
import 'infraestructura/mooc/cursos/fuentes/i_curso_fuente.dart' as _i10;
import 'infraestructura/mooc/cursos/repositorios/curso_repositorio.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpModuloInjectable = _$HttpModuloInjectable();
  gh.lazySingleton<_i3.Client>(() => httpModuloInjectable.cliente);
  gh.lazySingleton<_i4.IAutentificacionFachada>(() => _i5.HttpRequestFachada());
  gh.lazySingleton<_i6.ICertificadoFuente>(
      () => _i7.CertificadoFuente(cliente: get<_i8.HttpClient>()));
  gh.lazySingleton<_i9.ICertificadoRepositorio>(() =>
      _i9.CertificadoRepositorio(fuenteDeDatos: get<_i6.ICertificadoFuente>()));
  gh.lazySingleton<_i10.ICursoFuente>(
      () => _i11.CursoFuente(cliente: get<_i8.HttpClient>()));
  gh.lazySingleton<_i12.ICursoRepositorio>(
      () => _i12.CursoRepositorio(fuenteDeDatos: get<_i10.ICursoFuente>()));
  gh.lazySingleton<_i13.IEmpleadoFuente>(
      () => _i14.EmpleadoFuente(cliente: get<_i3.Client>()));
  gh.lazySingleton<_i15.IOfertaLaboralFuente>(
      () => _i16.OfertaLaboralFuente(cliente: get<_i3.Client>()));
  gh.lazySingleton<_i17.IOfertaLaboralRepositorio>(() =>
      _i18.OfertaLaboralRepositorio(
          fuenteDeDatos: get<_i15.IOfertaLaboralFuente>()));
  gh.lazySingleton<_i19.IPostulacionFuente>(
      () => _i20.PostulacionFuente(cliente: get<_i8.HttpClient>()));
  gh.lazySingleton<_i21.IPostulacionRepositorio>(() =>
      _i21.PostulacionRepositorio(
          fuenteDeDatos: get<_i19.IPostulacionFuente>()));
  gh.factory<_i22.IniciarSesionBloc>(
      () => _i22.IniciarSesionBloc(get<_i4.IAutentificacionFachada>()));
  gh.factory<_i23.PostularOfertaLaboralBloc>(() =>
      _i23.PostularOfertaLaboralBloc(get<_i17.IOfertaLaboralRepositorio>()));
  gh.factory<_i24.RegistroBloc>(
      () => _i24.RegistroBloc(get<_i4.IAutentificacionFachada>()));
  gh.factory<_i25.VerDetalleOfertaLaboralBloc>(() =>
      _i25.VerDetalleOfertaLaboralBloc(get<_i17.IOfertaLaboralRepositorio>()));
  gh.factory<_i26.VerOfertasLaboralesBloc>(() =>
      _i26.VerOfertasLaboralesBloc(get<_i17.IOfertaLaboralRepositorio>()));
  gh.factory<_i27.EstadoAutentificacionBloc>(
      () => _i27.EstadoAutentificacionBloc(get<_i4.IAutentificacionFachada>()));
  return get;
}

class _$HttpModuloInjectable extends _i28.HttpModuloInjectable {}
