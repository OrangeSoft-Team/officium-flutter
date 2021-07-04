import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_objects/genero.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/codigo_postal.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/direccion_calle.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/fecha_nacimiento.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/numero_telefonico.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/primer_apellido.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/primer_nombre.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/segundo_apellido.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/segundo_nombre.dart';
part 'empleado.freezed.dart';

@freezed
abstract class Empleado implements _$Empleado {
  const Empleado._();
  @Implements(IEntitidad)
  const factory Empleado(
      {required Identificador uuid,
      required PrimerNombre primerNombre,
      SegundoNombre? segundoNombre,
      required PrimerApellido primerApellido,
      SegundoApellido? segundoApellido,
      required Genero genero,
      required DireccionCalle direccionCalle,
      required CodigoPostal codigoPostal,
      required NumeroTelefonico numeroTelefonico,
      required bool statusEmpleado,
      required FechaNacimiento fechaNacimiento}) = _Empleado;

  factory Empleado.vacio() => Empleado(
      uuid: Identificador(),
      primerNombre: PrimerNombre(''),
      segundoNombre: SegundoNombre(''),
      primerApellido: PrimerApellido(''),
      segundoApellido: SegundoApellido(''),
      genero: Genero(''),
      direccionCalle: DireccionCalle(''),
      codigoPostal: CodigoPostal(''),
      numeroTelefonico: NumeroTelefonico(''),
      statusEmpleado: true,
      fechaNacimiento: FechaNacimiento(DateTime.now()));

//Devuelve un Valor Erroneo si la entidad Empleado tiene por lo menos 1 de sus campos invalidos.

  Option<ValorErroneo<dynamic>> get opcionFallo {
    return primerNombre.failureOrUnit
        .andThen(primerApellido.failureOrUnit)
        .andThen(genero.failureOrUnit)
        .andThen(direccionCalle.failureOrUnit)
        .andThen(codigoPostal.failureOrUnit)
        .andThen(numeroTelefonico.failureOrUnit)
        .andThen(fechaNacimiento.failureOrUnit)
        .fold((fallo) => some(fallo), (_) => none());
  }
}
