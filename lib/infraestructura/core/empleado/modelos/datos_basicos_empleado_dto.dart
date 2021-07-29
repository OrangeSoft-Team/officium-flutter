import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:officium_flutter/dominio/comun/value_objects/genero.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/core/entidades/empleado.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/codigo_postal.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/direccion_calle.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/fecha_nacimiento.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/nivel_educativo.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/numero_telefonico.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/primer_apellido.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/primer_nombre.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/segundo_apellido.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/segundo_nombre.dart';
import 'package:officium_flutter/infraestructura/comun/modelos/habilidad_dto.dart';
part 'datos_basicos_empleado_dto.freezed.dart';
part 'datos_basicos_empleado_dto.g.dart';

final formatoFecha = DateFormat("dd/MM/yyyy");

@freezed
abstract class DatosBasicosEmpleadoDTO implements _$DatosBasicosEmpleadoDTO {
  const DatosBasicosEmpleadoDTO._();
  factory DatosBasicosEmpleadoDTO({
    required String correoElectronico,
    required String token,
    required String primerNombre,
    String? segundoNombre,
    required  String primerApellido,
    String? segundoApellido,
    required String genero,
    required String nivelEducativo,
    required String numeroTelefonico,
    required String fechaNacimiento,
    required String codigoPostal,
    required String calleUno,
    String? calleDos,
    required String uuidPais,
    required String uuidEstado,
    required String uuidCiudad,
    List<HabilidadDTO>? habilidades, 
  }) = _DatosBasicosEmpleadoDTO;

  factory DatosBasicosEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$DatosBasicosEmpleadoDTOFromJson(json);
  
  /*factory DatosBasicosEmpleadoDTO.fromDomain(Empleado empleado) {
    return DatosBasicosEmpleadoDTO(
     correoElectronico: empleado.
    );
  }*/

  Empleado toDomain() {
    return Empleado(
     uuid: Identificador.fromUniqueString(token), 
     primerNombre: PrimerNombre(primerNombre),
     segundoNombre: segundoNombre != null? SegundoNombre(segundoNombre!) : null,
     primerApellido: PrimerApellido(primerApellido),
     segundoApellido: segundoApellido != null? SegundoApellido(segundoApellido!) : null,
     genero: Genero(genero),
     nivelEducativo: NivelEducativo(nivelEducativo),
     numeroTelefonico:NumeroTelefonico(numeroTelefonico),
     fechaNacimiento:FechaNacimiento(formatoFecha.parse(fechaNacimiento)),
     codigoPostal:CodigoPostal(codigoPostal),
     direccionCalleUno:DireccionCalle(calleUno),
     direccionCalleDos:DireccionCalle(calleDos!),
     statusEmpleado: true, //!
     uuidPais: Identificador.fromUniqueString(uuidPais),
     uuidEstado: Identificador.fromUniqueString(uuidEstado),
     uuidCiudad: Identificador.fromUniqueString(uuidCiudad)
    );
  }
}