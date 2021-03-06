// Mocks generated by Mockito 5.0.10 from annotations
// in officium_flutter/test/aplicacion/oferta_laboral/ver_detalle_oferta_laboral_concreta_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart'
    as _i8;
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart'
    as _i6;
import 'package:officium_flutter/dominio/oferta_laboral/entidades/postulacion_oferta.dart'
    as _i7;
import 'package:officium_flutter/dominio/oferta_laboral/excepciones_dominio/oferta_laboral_excepciones.dart'
    as _i5;
import 'package:officium_flutter/dominio/oferta_laboral/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart'
    as _i3;
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart'
    as _i9;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither<L, R> extends _i1.Fake implements _i2.Either<L, R> {
  @override
  String toString() => super.toString();
}

/// A class which mocks [IOfertaLaboralRepositorio].
///
/// See the documentation for Mockito's code generation for more information.
class MockIOfertaLaboralRepositorio extends _i1.Mock
    implements _i3.IOfertaLaboralRepositorio {
  MockIOfertaLaboralRepositorio() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i2.Either<_i5.OfertaLaboralExcepcion, List<_i6.OfertaLaboral>>>
      verTodasLasOfertasLaborales() => (super.noSuchMethod(
          Invocation.method(#verTodasLasOfertasLaborales, []),
          returnValue: Stream<
              _i2.Either<_i5.OfertaLaboralExcepcion,
                  List<_i6.OfertaLaboral>>>.empty()) as _i4.Stream<
          _i2.Either<_i5.OfertaLaboralExcepcion, List<_i6.OfertaLaboral>>>);
  @override
  _i4.Stream<_i2.Either<_i5.OfertaLaboralExcepcion, List<_i7.PostulacionOfertaLaboral>>>
      verTodasLasPostulacionesOfertaLaboral(_i8.Identificador? uuidEmpleado) =>
          (super.noSuchMethod(
                  Invocation.method(
                      #verTodasLasPostulacionesOfertaLaboral, [uuidEmpleado]),
                  returnValue:
                      Stream<_i2.Either<_i5.OfertaLaboralExcepcion, List<_i7.PostulacionOfertaLaboral>>>.empty())
              as _i4.Stream<
                  _i2.Either<_i5.OfertaLaboralExcepcion, List<_i7.PostulacionOfertaLaboral>>>);
  @override
  _i4.Future<_i2.Either<_i5.OfertaLaboralExcepcion, _i6.OfertaLaboral>>
      buscarOfertaLaboralConcreta(_i8.Identificador? uuidOferta) => (super.noSuchMethod(
              Invocation.method(#buscarOfertaLaboralConcreta, [uuidOferta]),
              returnValue: Future<
                      _i2.Either<_i5.OfertaLaboralExcepcion, _i6.OfertaLaboral>>.value(
                  _FakeEither<_i5.OfertaLaboralExcepcion, _i6.OfertaLaboral>()))
          as _i4.Future<_i2.Either<_i5.OfertaLaboralExcepcion, _i6.OfertaLaboral>>);
  @override
  _i4.Future<_i2.Either<_i5.OfertaLaboralExcepcion, _i2.Unit>> aplicarOfertaLaboral(
          _i8.Identificador? uuidOferta,
          _i8.Identificador? uuidEmpleado,
          _i8.Identificador? uuidEmpresa,
          _i9.ComentarioPostulacionOfertaLaboral?
              comentarioPostulacionOfertaLaboral) =>
      (super.noSuchMethod(
              Invocation.method(#aplicarOfertaLaboral,
                  [uuidOferta, uuidEmpleado, uuidEmpresa, comentarioPostulacionOfertaLaboral]),
              returnValue: Future<_i2.Either<_i5.OfertaLaboralExcepcion, _i2.Unit>>.value(
                  _FakeEither<_i5.OfertaLaboralExcepcion, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.OfertaLaboralExcepcion, _i2.Unit>>);
}
