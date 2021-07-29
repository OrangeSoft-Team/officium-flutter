import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/primer_apellido.dart';
import 'package:officium_flutter/dominio/core/value_objects/empleado/primer_nombre.dart';

part 'personal_administrativo.freezed.dart';

@freezed
abstract class PersonalAdministrativo with _$PersonalAdministrativo {
  @Implements(IEntidad)
  const factory PersonalAdministrativo({
    required Identificador uuid,
    required PrimerNombre primerNombre,
    required PrimerApellido primerApellido,
    required Cargo cargo,
  }) = _PersonalAdministrativo;
}
