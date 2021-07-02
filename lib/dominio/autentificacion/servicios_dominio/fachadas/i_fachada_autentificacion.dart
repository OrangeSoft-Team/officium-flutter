import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/autentificacion/excepciones_dominio/autentificacion_excepciones.dart';
import 'package:officium_flutter/dominio/autentificacion/vaue_objecs/email.dart';
import 'package:officium_flutter/dominio/autentificacion/vaue_objecs/password.dart';
import 'package:officium_flutter/dominio/empleado/entidades/empleado.dart';

abstract class IAutentificacionFachada {
  Future<Option<Empleado>> getUsuarioLogueado();
  Future<Either<ExcepcionAutentificacion, Unit>> registarConDatosBasicos({
    required Empleado empleado,
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<ExcepcionAutentificacion, Unit>> loginConEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<ExcepcionAutentificacion, Unit>> loginGoogle();
  Future<void> signOut();
}
