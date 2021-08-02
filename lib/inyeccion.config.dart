// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:io' as _i8;

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart'
    as _i38;
import 'aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart'
    as _i33;
import 'aplicacion/autentificacion/registro/registro_bloc.dart' as _i35;
import 'aplicacion/contratacion/oferta_laboral/ver_detalle_oferta_laboral/ver_detalle_oferta_laboral_bloc.dart'
    as _i36;
import 'aplicacion/contratacion/oferta_laboral/ver_ofertas_laborales/ver_ofertas_laborales_bloc.dart'
    as _i37;
import 'aplicacion/contratacion/postulacion/postular_oferta_laboral/postular_oferta_laboral_bloc.dart'
    as _i34;
import 'dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart'
    as _i9;
import 'dominio/contrataciones/servicios_dominio/repositorio/i_contratacion_repositorio.dart'
    as _i17;
import 'dominio/core/servicios_dominio/repositorios/i_empleado_repositorio.dart'
    as _i39;
import 'infraestructura/autentificacion/fuentes/autentificacion_firebase_fuente.dart'
    as _i12;
import 'infraestructura/autentificacion/fuentes/i_autentificacion_firebase_fuente.dart'
    as _i11;
import 'infraestructura/autentificacion/fuentes/modulo_repo_firebaseauth.dart'
    as _i42;
import 'infraestructura/autentificacion/fuentes/modulo_repo_google_sign_in.dart'
    as _i44;
import 'infraestructura/autentificacion/http_request_fachada.dart' as _i10;
import 'infraestructura/comun/local_storage/fuentes/fuente_local.dart' as _i6;
import 'infraestructura/comun/local_storage/fuentes/i_fuente_local.dart'
    as _i27;
import 'infraestructura/comun/local_storage/fuentes/modulo_repo_fuente_local.dart'
    as _i43;
import 'infraestructura/contrataciones/entrevista/fuentes/entrevista_fuente.dart'
    as _i24;
import 'infraestructura/contrataciones/entrevista/fuentes/i_entrevista_fuente.dart'
    as _i23;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/contratacion_fuente.dart'
    as _i16;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/i_contratacion_fuente.dart'
    as _i15;
import 'infraestructura/contrataciones/oferta_laboral/fuentes/modulo_repo_htttp.dart'
    as _i41;
import 'infraestructura/contrataciones/oferta_laboral/repositorios/contratacion_repositorio.dart'
    as _i18;
import 'infraestructura/contrataciones/postulacion/fuentes/i_postulacion_fuente.dart'
    as _i28;
import 'infraestructura/contrataciones/postulacion/fuentes/postulacion_fuente.dart'
    as _i29;
import 'infraestructura/contrataciones/postulacion/repositorios/postulacion_repositorio.dart'
    as _i30;
import 'infraestructura/contrataciones/trabajo/fuentes/i_trabajo_fuente.dart'
    as _i31;
import 'infraestructura/contrataciones/trabajo/fuentes/trabajo_fuente.dart'
    as _i32;
import 'infraestructura/core/empleado/fuentes/empleado_fuente.dart' as _i22;
import 'infraestructura/core/empleado/fuentes/i_empleado_fuente.dart' as _i21;
import 'infraestructura/core/empleado/repositorios/empleado_repositorio.dto.dart'
    as _i40;
import 'infraestructura/core/experiencia_laboral/fuentes/experiencia_laboral_fuente.dart'
    as _i26;
import 'infraestructura/core/experiencia_laboral/fuentes/i_experiencia_laboral_fuente.dart'
    as _i25;
import 'infraestructura/mooc/certificados/fuentes/certificado_fuente.dart'
    as _i14;
import 'infraestructura/mooc/certificados/fuentes/i_certificado_fuente.dart'
    as _i13;
import 'infraestructura/mooc/cursos/fuentes/curso_fuente.dart' as _i20;
import 'infraestructura/mooc/cursos/fuentes/i_curso_fuente.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpModuloInjectable = _$HttpModuloInjectable();
  final firebaseAuthModuloInjectable = _$FirebaseAuthModuloInjectable();
  final fuenteLocalModuloInjectable = _$FuenteLocalModuloInjectable();
  final googleSignInModuloInjectable = _$GoogleSignInModuloInjectable();
  final httpClientModuloInjectable = _$HttpClientModuloInjectable();
  gh.lazySingleton<_i3.Client>(() => httpModuloInjectable.cliente);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseAuthModuloInjectable.firebaseAuth);
  gh.factory<_i5.FlutterSecureStorage>(
      () => fuenteLocalModuloInjectable.storage);
  gh.lazySingleton<_i6.FuenteLocal>(
      () => fuenteLocalModuloInjectable.fuenteLocal);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => googleSignInModuloInjectable.googleSignIn);
  gh.lazySingleton<_i8.HttpClient>(() => httpClientModuloInjectable.cliente);
  gh.lazySingleton<_i9.IAutentificacionFachada>(
      () => _i10.HttpRequestFachada());
  gh.lazySingleton<_i11.IAuthFirebaseFuente>(() => _i12.FirebaseAuthFuente(
      cliente: get<_i8.HttpClient>(),
      firebaseAuth: get<_i4.FirebaseAuth>(),
      googleSignIn: get<_i7.GoogleSignIn>(),
      fuenteLocal: get<_i6.FuenteLocal>()));
  gh.lazySingleton<_i13.ICertificadoFuente>(
      () => _i14.CertificadoFuente(cliente: get<_i8.HttpClient>()));
  gh.lazySingleton<_i15.IContratacionFuente>(
      () => _i16.OfertaLaboralFuente(cliente: get<_i3.Client>()));
  gh.lazySingleton<_i17.IContratacionesRepositorio>(() =>
      _i18.ContratacionRepositorio(
          fuenteDeDatos: get<_i15.IContratacionFuente>()));
  gh.lazySingleton<_i19.ICursoFuente>(
      () => _i20.CursoFuente(cliente: get<_i8.HttpClient>()));
  gh.lazySingleton<_i21.IEmpleadoFuente>(
      () => _i22.EmpleadoFuente(cliente: get<_i8.HttpClient>()));
  gh.lazySingleton<_i23.IEntrevistaFuente>(
      () => _i24.EntrevistaFuente(cliente: get<_i8.HttpClient>()));
  gh.lazySingleton<_i25.IExperienciaLaboralFuente>(
      () => _i26.ExperienciaLaboralFuente(cliente: get<_i8.HttpClient>()));
  gh.lazySingleton<_i27.IFuenteLocal>(
      () => _i6.FuenteLocal(storage: get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i28.IPostulacionFuente>(
      () => _i29.PostulacionFuente(cliente: get<_i8.HttpClient>()));
  gh.lazySingleton<_i30.IPostulacionRepositorio>(() =>
      _i30.PostulacionRepositorio(
          fuenteDeDatos: get<_i28.IPostulacionFuente>()));
  gh.lazySingleton<_i31.ITrabajoFuente>(
      () => _i32.TrabajoFuente(cliente: get<_i8.HttpClient>()));
  gh.factory<_i33.IniciarSesionBloc>(
      () => _i33.IniciarSesionBloc(get<_i9.IAutentificacionFachada>()));
  gh.factory<_i34.PostularOfertaLaboralBloc>(() =>
      _i34.PostularOfertaLaboralBloc(get<_i17.IContratacionesRepositorio>()));
  gh.factory<_i35.RegistroBloc>(
      () => _i35.RegistroBloc(get<_i9.IAutentificacionFachada>()));
  gh.factory<_i36.VerDetalleOfertaLaboralBloc>(() =>
      _i36.VerDetalleOfertaLaboralBloc(get<_i17.IContratacionesRepositorio>()));
  gh.factory<_i37.VerOfertasLaboralesBloc>(() =>
      _i37.VerOfertasLaboralesBloc(get<_i17.IContratacionesRepositorio>()));
  gh.factory<_i38.EstadoAutentificacionBloc>(
      () => _i38.EstadoAutentificacionBloc(get<_i9.IAutentificacionFachada>()));
  gh.lazySingleton<_i39.IEmpleadoRepositorio>(() => _i40.EmpleadoRepositorio(
      fuenteDeDatosEmpleado: get<_i21.IEmpleadoFuente>(),
      fuenteDeDatosExperienciaLaboral: get<_i25.IExperienciaLaboralFuente>(),
      fuenteLocal: get<_i27.IFuenteLocal>()));
  return get;
}

class _$HttpModuloInjectable extends _i41.HttpModuloInjectable {}

class _$FirebaseAuthModuloInjectable extends _i42.FirebaseAuthModuloInjectable {
}

class _$FuenteLocalModuloInjectable extends _i43.FuenteLocalModuloInjectable {}

class _$GoogleSignInModuloInjectable extends _i44.GoogleSignInModuloInjectable {
}

class _$HttpClientModuloInjectable extends _i41.HttpClientModuloInjectable {}
