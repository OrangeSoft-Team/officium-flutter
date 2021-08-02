// Mocks generated by Mockito 5.0.12 from annotations
// in officium_flutter/test/aplicacion/contrataciones/oferta_laboral/ver_ofertas_laborales_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart'
    as _i7;
import 'package:officium_flutter/dominio/contrataciones/entidades/entrevista.dart'
    as _i11;
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart'
    as _i6;
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart'
    as _i10;
import 'package:officium_flutter/dominio/contrataciones/entidades/trabajo.dart'
    as _i8;
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart'
    as _i5;
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_contratacion_repositorio.dart'
    as _i3;
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart'
    as _i9;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [IContratacionesRepositorio].
///
/// See the documentation for Mockito's code generation for more information.
class MockIContratacionesRepositorio extends _i1.Mock
    implements _i3.IContratacionesRepositorio {
  MockIContratacionesRepositorio() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i2.Either<_i5.ContratacionExcepcion, List<_i6.OfertaLaboral>>>
      verTodasLasOfertasLaborales() => (super.noSuchMethod(
          Invocation.method(#verTodasLasOfertasLaborales, []),
          returnValue: Stream<
              _i2.Either<_i5.ContratacionExcepcion,
                  List<_i6.OfertaLaboral>>>.empty()) as _i4.Stream<
          _i2.Either<_i5.ContratacionExcepcion, List<_i6.OfertaLaboral>>>);
  @override
  _i4.Future<_i2.Either<_i5.ContratacionExcepcion, _i6.OfertaLaboral>>
      verDetalleOfertaLaboral(_i7.Identificador? uuidOferta) => (super.noSuchMethod(
              Invocation.method(#verDetalleOfertaLaboral, [uuidOferta]),
              returnValue: Future<
                      _i2.Either<_i5.ContratacionExcepcion, _i6.OfertaLaboral>>.value(
                  _FakeEither<_i5.ContratacionExcepcion, _i6.OfertaLaboral>()))
          as _i4.Future<_i2.Either<_i5.ContratacionExcepcion, _i6.OfertaLaboral>>);
  @override
  _i4.Stream<_i2.Either<_i5.ContratacionExcepcion, List<_i8.Trabajo>>>
      verTodosLosTrabajosEmpleado(_i7.Identificador? uuidEmpleado) => (super
          .noSuchMethod(
              Invocation.method(#verTodosLosTrabajosEmpleado, [uuidEmpleado]),
              returnValue: Stream<
                  _i2.Either<_i5.ContratacionExcepcion,
                      List<_i8.Trabajo>>>.empty()) as _i4
          .Stream<_i2.Either<_i5.ContratacionExcepcion, List<_i8.Trabajo>>>);
  @override
  _i4.Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>> renunciarTrabajo(
          _i7.Identificador? uuidTrabajo) =>
      (super.noSuchMethod(Invocation.method(#renunciarTrabajo, [uuidTrabajo]),
              returnValue:
                  Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>.value(
                      _FakeEither<_i5.ContratacionExcepcion, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>> aplicarOfertaLaboral(
          _i7.Identificador? uuidOferta,
          _i7.Identificador? uuidEmpleado,
          _i7.Identificador? uuidEmpresa,
          _i9.ComentarioPostulacionOfertaLaboral?
              comentarioPostulacionOfertaLaboral) =>
      (super.noSuchMethod(
              Invocation.method(#aplicarOfertaLaboral,
                  [uuidOferta, uuidEmpleado, uuidEmpresa, comentarioPostulacionOfertaLaboral]),
              returnValue: Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>.value(
                  _FakeEither<_i5.ContratacionExcepcion, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>
      cancelarPostulacionOfertaLaboral(_i7.Identificador? uuidPostulacion) =>
          (super.noSuchMethod(
              Invocation.method(
                  #cancelarPostulacionOfertaLaboral, [uuidPostulacion]),
              returnValue:
                  Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>.value(
                      _FakeEither<_i5.ContratacionExcepcion, _i2.Unit>())) as _i4
              .Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>);
  @override
  _i4.Stream<_i2.Either<_i5.ContratacionExcepcion, List<_i10.PostulacionOfertaLaboral>>>
      verTodasLasPostulacionesOfertaLaboral(_i7.Identificador? uuidEmpleado) =>
          (super.noSuchMethod(
                  Invocation.method(
                      #verTodasLasPostulacionesOfertaLaboral, [uuidEmpleado]),
                  returnValue:
                      Stream<_i2.Either<_i5.ContratacionExcepcion, List<_i10.PostulacionOfertaLaboral>>>.empty())
              as _i4.Stream<
                  _i2.Either<_i5.ContratacionExcepcion, List<_i10.PostulacionOfertaLaboral>>>);
  @override
  _i4.Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>
      cancelarPropuestaEntrevista(_i7.Identificador? uuidEntrevista) =>
          (super.noSuchMethod(
              Invocation.method(#cancelarPropuestaEntrevista, [uuidEntrevista]),
              returnValue: Future<
                      _i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>.value(
                  _FakeEither<_i5.ContratacionExcepcion, _i2.Unit>())) as _i4
              .Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>
      confirmarPropuestaEntrevista(_i7.Identificador? uuidEntrevista) =>
          (super.noSuchMethod(
              Invocation.method(
                  #confirmarPropuestaEntrevista, [uuidEntrevista]),
              returnValue:
                  Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>.value(
                      _FakeEither<_i5.ContratacionExcepcion, _i2.Unit>())) as _i4
              .Future<_i2.Either<_i5.ContratacionExcepcion, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.ContratacionExcepcion, _i11.Entrevista>>
      consultarDetalleEntrevista(_i7.Identificador? uuidEntrevista) =>
          (super.noSuchMethod(
              Invocation.method(#consultarDetalleEntrevista, [uuidEntrevista]),
              returnValue:
                  Future<_i2.Either<_i5.ContratacionExcepcion, _i11.Entrevista>>.value(
                      _FakeEither<_i5.ContratacionExcepcion, _i11.Entrevista>())) as _i4
              .Future<_i2.Either<_i5.ContratacionExcepcion, _i11.Entrevista>>);
  @override
  _i4.Stream<_i2.Either<_i5.ContratacionExcepcion, List<_i11.Entrevista>>>
      verTodasLasEntrevistasEmpleado(_i7.Identificador? uuidEmpleado) => (super
              .noSuchMethod(
                  Invocation.method(
                      #verTodasLasEntrevistasEmpleado, [uuidEmpleado]),
                  returnValue:
                      Stream<_i2.Either<_i5.ContratacionExcepcion, List<_i11.Entrevista>>>.empty())
          as _i4.Stream<
              _i2.Either<_i5.ContratacionExcepcion, List<_i11.Entrevista>>>);
}
