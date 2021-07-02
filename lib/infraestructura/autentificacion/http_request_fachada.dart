import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'package:officium_flutter/dominio/autentificacion/excepciones_dominio/autentificacion_excepciones.dart';
import 'package:officium_flutter/dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart';
import 'package:officium_flutter/dominio/autentificacion/vaue_objecs/email.dart';
import 'package:officium_flutter/dominio/autentificacion/vaue_objecs/password.dart';
import 'package:officium_flutter/dominio/empleado/entidades/empleado.dart';

@LazySingleton(as: IAutentificacionFachada)
class HttpRequestFachada implements IAutentificacionFachada {
  @override
  Future<Option<Empleado>> getUsuarioLogueado() {
    // TODO: implement getUsuarioLogueado
    throw UnimplementedError();
  }

  @override
  Future<Either<ExcepcionAutentificacion, Unit>> loginConEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    // TODO: implement loginConEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<ExcepcionAutentificacion, Unit>> loginGoogle() {
    // TODO: implement loginGoogle
    throw UnimplementedError();
  }

  @override
  Future<Either<ExcepcionAutentificacion, Unit>> registarConDatosBasicos(
      {required Empleado empleado,
      required EmailAddress emailAddress,
      required Password password}) {
    // TODO: implement registarConDatosBasicos
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
