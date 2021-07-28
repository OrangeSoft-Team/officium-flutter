// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:io' as _i6;

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart'
    as _i37;
import 'aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart'
    as _i32;
import 'aplicacion/autentificacion/registro/registro_bloc.dart' as _i34;
import 'aplicacion/oferta_laboral/postular_oferta_laboral/postular_oferta_laboral_bloc.dart'
    as _i33;
import 'aplicacion/oferta_laboral/ver_detalle_oferta_laboral/ver_detalle_oferta_laboral_bloc.dart'
    as _i35;
import 'aplicacion/oferta_laboral/ver_ofertas_laborales/ver_ofertas_laborales_bloc.dart'
    as _i36;
import 'dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart'
    as _i7;
import 'dominio/oferta_laboral/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart'
    as _i25;
import 'infraestructura/autentificacion/fuentes/autentificacion_firebase_fuente.dart'
    as _i10;
import 'infraestructura/autentificacion/fuentes/i_autentificacion_firebase_fuente.dart'
    as _i9;
import 'infraestructura/autentificacion/fuentes/modulo_repo_firebaseauth.dart'
    as _i39;
import 'infraestructura/autentificacion/fuentes/modulo_repo_google_sign_in.dart'
    as _i40;
import 'infraestructura/autentificacion/http_request_fachada.dart' as _i8;
import 'infraestructura/contrataciones/entrevista/fuentes/entrevista_fuente.dart'
    as _i20;
import 'infraestructura/contrataciones/entrevista/fuentes/i_entrevista_fuente.dart'
    as _i19;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/i_oferta_laboral_fuente.dart'
    as _i23;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/modulo_repo_htttp.dart'
    as _i38;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/oferta_laboral_fuente.dart'
    as _i24;
import 'infraestructura/contrataciones/oferta_laboral/repositorios/oferta_laboral_repositorio.dart'
    as _i26;
import 'infraestructura/contrataciones/postulacion/fuentes/i_postulacion_fuente.dart'
    as _i27;
import 'infraestructura/contrataciones/postulacion/fuentes/postulacion_fuente.dart'
    as _i28;
import 'infraestructura/contrataciones/postulacion/repositorios/postulacion_repositorio.dart'
    as _i29;
import 'infraestructura/contrataciones/trabajo/fuentes/i_trabajo_fuente.dart'
    as _i30;
import 'infraestructura/contrataciones/trabajo/fuentes/trabajo_fuente.dart'
    as _i31;
import 'infraestructura/core/empleado/fuentes/empleado_fuente.dart' as _i18;
import 'infraestructura/core/empleado/fuentes/i_empleado_fuente.dart' as _i17;
import 'infraestructura/core/experiencia_laboral/fuentes/experiencia_laboral_fuente.dart'
    as _i22;
import 'infraestructura/core/experiencia_laboral/fuentes/i_experiencia_laboral_fuente.dart'
    as _i21;
import 'infraestructura/mooc/certificados/fuentes/certificado_fuente.dart'
    as _i12;
import 'infraestructura/mooc/certificados/fuentes/i_certificado_fuente.dart'
    as _i11;
import 'infraestructura/mooc/certificados/repositorio/certificado_repositorio.dart'
    as _i13;
import 'infraestructura/mooc/cursos/fuentes/curso_fuente.dart' as _i15;
import 'infraestructura/mooc/cursos/fuentes/i_curso_fuente.dart' as _i14;
import 'infraestructura/mooc/cursos/repositorios/curso_repositorio.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpModuloInjectable = _$HttpModuloInjectable();
  final firebaseAuthModuloInjectable = _$FirebaseAuthModuloInjectable();
  final googleSignInModuloInjectable = _$GoogleSignInModuloInjectable();
  final httpClientModuloInjectable = _$HttpClientModuloInjectable();
  gh.lazySingleton<_i3.Client>(() => httpModuloInjectable.cliente);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseAuthModuloInjectable.firebaseAuth);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => googleSignInModuloInjectable.googleSignIn);
  gh.lazySingleton<_i6.HttpClient>(() => httpClientModuloInjectable.cliente);
  gh.lazySingleton<_i7.IAutentificacionFachada>(() => _i8.HttpRequestFachada());
  gh.lazySingleton<_i9.IAuthFirebaseFuente>(() => _i10.FirebaseAuthFuente(
      cliente: get<_i6.HttpClient>(),
      firebaseAuth: get<_i4.FirebaseAuth>(),
      googleSignIn: get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i11.ICertificadoFuente>(
      () => _i12.CertificadoFuente(cliente: get<_i6.HttpClient>()));
  gh.lazySingleton<_i13.ICertificadoRepositorio>(() =>
      _i13.CertificadoRepositorio(
          fuenteDeDatos: get<_i11.ICertificadoFuente>()));
  gh.lazySingleton<_i14.ICursoFuente>(
      () => _i15.CursoFuente(cliente: get<_i6.HttpClient>()));
  gh.lazySingleton<_i16.ICursoRepositorio>(
      () => _i16.CursoRepositorio(fuenteDeDatos: get<_i14.ICursoFuente>()));
  gh.lazySingleton<_i17.IEmpleadoFuente>(
      () => _i18.EmpleadoFuente(cliente: get<_i6.HttpClient>()));
  gh.lazySingleton<_i19.IEntrevistaFuente>(
      () => _i20.EntrevistaFuente(cliente: get<_i6.HttpClient>()));
  gh.lazySingleton<_i21.IExperienciaLaboralFuente>(
      () => _i22.ExperienciaLaboralFuente(cliente: get<_i6.HttpClient>()));
  gh.lazySingleton<_i23.IOfertaLaboralFuente>(
      () => _i24.OfertaLaboralFuente(cliente: get<_i3.Client>()));
  gh.lazySingleton<_i25.IOfertaLaboralRepositorio>(() =>
      _i26.OfertaLaboralRepositorio(
          fuenteDeDatos: get<_i23.IOfertaLaboralFuente>()));
  gh.lazySingleton<_i27.IPostulacionFuente>(
      () => _i28.PostulacionFuente(cliente: get<_i6.HttpClient>()));
  gh.lazySingleton<_i29.IPostulacionRepositorio>(() =>
      _i29.PostulacionRepositorio(
          fuenteDeDatos: get<_i27.IPostulacionFuente>()));
  gh.lazySingleton<_i30.ITrabajoFuente>(
      () => _i31.TrabajoFuente(cliente: get<_i6.HttpClient>()));
  gh.factory<_i32.IniciarSesionBloc>(
      () => _i32.IniciarSesionBloc(get<_i7.IAutentificacionFachada>()));
  gh.factory<_i33.PostularOfertaLaboralBloc>(() =>
      _i33.PostularOfertaLaboralBloc(get<_i25.IOfertaLaboralRepositorio>()));
  gh.factory<_i34.RegistroBloc>(
      () => _i34.RegistroBloc(get<_i7.IAutentificacionFachada>()));
  gh.factory<_i35.VerDetalleOfertaLaboralBloc>(() =>
      _i35.VerDetalleOfertaLaboralBloc(get<_i25.IOfertaLaboralRepositorio>()));
  gh.factory<_i36.VerOfertasLaboralesBloc>(() =>
      _i36.VerOfertasLaboralesBloc(get<_i25.IOfertaLaboralRepositorio>()));
  gh.factory<_i37.EstadoAutentificacionBloc>(
      () => _i37.EstadoAutentificacionBloc(get<_i7.IAutentificacionFachada>()));
  return get;
}

class _$HttpModuloInjectable extends _i38.HttpModuloInjectable {}

class _$FirebaseAuthModuloInjectable extends _i39.FirebaseAuthModuloInjectable {
}

class _$GoogleSignInModuloInjectable extends _i40.GoogleSignInModuloInjectable {
}

class _$HttpClientModuloInjectable extends _i38.HttpClientModuloInjectable {}
