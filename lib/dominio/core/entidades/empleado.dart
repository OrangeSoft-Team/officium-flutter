import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_objects/genero.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/codigo_postal.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/direccion_calle.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/fecha_nacimiento.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/nivel_educativo.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/numero_telefonico.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/primer_apellido.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/primer_nombre.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/segundo_apellido.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/segundo_nombre.dart';
part 'empleado.freezed.dart';

@freezed
abstract class Empleado implements _$Empleado {
  const Empleado._();
  @Implements(IEntidad)
  const factory Empleado({
    required Identificador uuid,
    required PrimerNombre primerNombre,
    SegundoNombre? segundoNombre,
    required PrimerApellido primerApellido,
    SegundoApellido? segundoApellido,
    required Genero genero,
    required NivelEducativo nivelEducativo,
    required NumeroTelefonico numeroTelefonico,
    required FechaNacimiento fechaNacimiento,
    required CodigoPostal codigoPostal,
    required DireccionCalle direccionCalleUno,
    DireccionCalle? direccionCalleDos,
    required bool statusEmpleado,
    required Identificador uuidPais,
    required Identificador uuidEstado,
    required Identificador uuidCiudad,
  }) = _Empleado;

  factory Empleado.vacio() => Empleado(
      uuid: Identificador(),
      primerNombre: PrimerNombre(''),
      segundoNombre: SegundoNombre(''),
      primerApellido: PrimerApellido(''),
      segundoApellido: SegundoApellido(''),
      genero: Genero(''),
      direccionCalleUno: DireccionCalle(''),
      codigoPostal: CodigoPostal(''),
      numeroTelefonico: NumeroTelefonico(''),
      statusEmpleado: true,
      nivelEducativo: NivelEducativo(''),
      uuidPais: Identificador(),
      uuidCiudad: Identificador(),
      uuidEstado: Identificador(),
      fechaNacimiento: FechaNacimiento(DateTime.now()));

//Devuelve un Valor Erroneo si la entidad Empleado tiene por lo menos 1 de sus campos invalidos.

  Option<ValorErroneo<dynamic>> get opcionFallo {
    return primerNombre.failureOrUnit
        .andThen(primerApellido.failureOrUnit)
        .andThen(genero.failureOrUnit)
        .andThen(direccionCalleUno.failureOrUnit)
        .andThen(codigoPostal.failureOrUnit)
        .andThen(numeroTelefonico.failureOrUnit)
        .andThen(fechaNacimiento.failureOrUnit)
        .andThen(nivelEducativo.failureOrUnit)
        .fold((fallo) => some(fallo), (_) => none());
  }
}
