import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/codigo_postal.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/direccion_calle.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';
part 'empresa.freezed.dart';

@freezed
abstract class Empresa with _$Empresa {
  @Implements(IEntitidad)
  const factory Empresa({
    required Identificador uuid,
    required NombreEmpresa nombreEmpresa,
    required DireccionCalle direccionCalle,
    required CodigoPostal codigoPostal,
  }) = _Empresa;
}
