// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:io' as _i5;

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart'
    as _i36;
import 'aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart'
    as _i31;
import 'aplicacion/autentificacion/registro/registro_bloc.dart' as _i33;
import 'aplicacion/oferta_laboral/postular_oferta_laboral/postular_oferta_laboral_bloc.dart'
    as _i32;
import 'aplicacion/oferta_laboral/ver_detalle_oferta_laboral/ver_detalle_oferta_laboral_bloc.dart'
    as _i34;
import 'aplicacion/oferta_laboral/ver_ofertas_laborales/ver_ofertas_laborales_bloc.dart'
    as _i35;
import 'dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart'
    as _i6;
import 'dominio/oferta_laboral/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart'
    as _i24;
import 'infraestructura/autentificacion/fuentes/autentificacion_firebase_fuente.dart'
    as _i9;
import 'infraestructura/autentificacion/fuentes/i_autentificacion_firebase_fuente.dart'
    as _i8;
import 'infraestructura/autentificacion/fuentes/modulo_repo_firebaseauth.dart'
    as _i38;
import 'infraestructura/autentificacion/http_request_fachada.dart' as _i7;
import 'infraestructura/contrataciones/entrevista/fuentes/entrevista_fuente.dart'
    as _i19;
import 'infraestructura/contrataciones/entrevista/fuentes/i_entrevista_fuente.dart'
    as _i18;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/i_oferta_laboral_fuente.dart'
    as _i22;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/modulo_repo_htttp.dart'
    as _i37;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/oferta_laboral_fuente.dart'
    as _i23;
import 'infraestructura/contrataciones/oferta_laboral/repositorios/oferta_laboral_repositorio.dart'
    as _i25;
import 'infraestructura/contrataciones/postulacion/fuentes/i_postulacion_fuente.dart'
    as _i26;
import 'infraestructura/contrataciones/postulacion/fuentes/postulacion_fuente.dart'
    as _i27;
import 'infraestructura/contrataciones/postulacion/repositorios/postulacion_repositorio.dart'
    as _i28;
import 'infraestructura/contrataciones/trabajo/fuentes/i_trabajo_fuente.dart'
    as _i29;
import 'infraestructura/contrataciones/trabajo/fuentes/trabajo_fuente.dart'
    as _i30;
import 'infraestructura/core/empleado/fuentes/empleado_fuente.dart' as _i17;
import 'infraestructura/core/empleado/fuentes/i_empleado_fuente.dart' as _i16;
import 'infraestructura/core/experiencia_laboral/fuentes/experiencia_laboral_fuente.dart'
    as _i21;
import 'infraestructura/core/experiencia_laboral/fuentes/i_experiencia_laboral_fuente.dart'
    as _i20;
import 'infraestructura/mooc/certificados/fuentes/certificado_fuente.dart'
    as _i11;
import 'infraestructura/mooc/certificados/fuentes/i_certificado_fuente.dart'
    as _i10;
import 'infraestructura/mooc/certificados/repositorio/certificado_repositorio.dart'
    as _i12;
import 'infraestructura/mooc/cursos/fuentes/curso_fuente.dart' as _i14;
import 'infraestructura/mooc/cursos/fuentes/i_curso_fuente.dart' as _i13;
import 'infraestructura/mooc/cursos/repositorios/curso_repositorio.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpModuloInjectable = _$HttpModuloInjectable();
  final firebaseAuthModuloInjectable = _$FirebaseAuthModuloInjectable();
  final httpClientModuloInjectable = _$HttpClientModuloInjectable();
  gh.lazySingleton<_i3.Client>(() => httpModuloInjectable.cliente);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseAuthModuloInjectable.firebaseAuth);
  gh.lazySingleton<_i5.HttpClient>(() => httpClientModuloInjectable.cliente);
  gh.lazySingleton<_i6.IAutentificacionFachada>(() => _i7.HttpRequestFachada());
  gh.lazySingleton<_i8.IAuthFirebaseFuente>(() => _i9.FirebaseAuthFuente(
      cliente: get<_i5.HttpClient>(), firebaseAuth: get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i10.ICertificadoFuente>(
      () => _i11.CertificadoFuente(cliente: get<_i5.HttpClient>()));
  gh.lazySingleton<_i12.ICertificadoRepositorio>(() =>
      _i12.CertificadoRepositorio(
          fuenteDeDatos: get<_i10.ICertificadoFuente>()));
  gh.lazySingleton<_i13.ICursoFuente>(
      () => _i14.CursoFuente(cliente: get<_i5.HttpClient>()));
  gh.lazySingleton<_i15.ICursoRepositorio>(
      () => _i15.CursoRepositorio(fuenteDeDatos: get<_i13.ICursoFuente>()));
  gh.lazySingleton<_i16.IEmpleadoFuente>(
      () => _i17.EmpleadoFuente(cliente: get<_i5.HttpClient>()));
  gh.lazySingleton<_i18.IEntrevistaFuente>(
      () => _i19.EntrevistaFuente(cliente: get<_i5.HttpClient>()));
  gh.lazySingleton<_i20.IExperienciaLaboralFuente>(
      () => _i21.ExperienciaLaboralFuente(cliente: get<_i5.HttpClient>()));
  gh.lazySingleton<_i22.IOfertaLaboralFuente>(
      () => _i23.OfertaLaboralFuente(cliente: get<_i3.Client>()));
  gh.lazySingleton<_i24.IOfertaLaboralRepositorio>(() =>
      _i25.OfertaLaboralRepositorio(
          fuenteDeDatos: get<_i22.IOfertaLaboralFuente>()));
  gh.lazySingleton<_i26.IPostulacionFuente>(
      () => _i27.PostulacionFuente(cliente: get<_i5.HttpClient>()));
  gh.lazySingleton<_i28.IPostulacionRepositorio>(() =>
      _i28.PostulacionRepositorio(
          fuenteDeDatos: get<_i26.IPostulacionFuente>()));
  gh.lazySingleton<_i29.ITrabajoFuente>(
      () => _i30.TrabajoFuente(cliente: get<_i5.HttpClient>()));
  gh.factory<_i31.IniciarSesionBloc>(
      () => _i31.IniciarSesionBloc(get<_i6.IAutentificacionFachada>()));
  gh.factory<_i32.PostularOfertaLaboralBloc>(() =>
      _i32.PostularOfertaLaboralBloc(get<_i24.IOfertaLaboralRepositorio>()));
  gh.factory<_i33.RegistroBloc>(
      () => _i33.RegistroBloc(get<_i6.IAutentificacionFachada>()));
  gh.factory<_i34.VerDetalleOfertaLaboralBloc>(() =>
      _i34.VerDetalleOfertaLaboralBloc(get<_i24.IOfertaLaboralRepositorio>()));
  gh.factory<_i35.VerOfertasLaboralesBloc>(() =>
      _i35.VerOfertasLaboralesBloc(get<_i24.IOfertaLaboralRepositorio>()));
  gh.factory<_i36.EstadoAutentificacionBloc>(
      () => _i36.EstadoAutentificacionBloc(get<_i6.IAutentificacionFachada>()));
  return get;
}

class _$HttpModuloInjectable extends _i37.HttpModuloInjectable {}

class _$FirebaseAuthModuloInjectable extends _i38.FirebaseAuthModuloInjectable {
}

class _$HttpClientModuloInjectable extends _i37.HttpClientModuloInjectable {}
