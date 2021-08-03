import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/entrevista.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/entrevista/asunto_entrevista.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/entrevista/estado_entrevista.dart';
part 'detalle_propuesta_entrevista_empleado_dto.freezed.dart';
part 'detalle_propuesta_entrevista_empleado_dto.g.dart';

final formatoFecha = DateFormat("dd/MM/yyyy");
@freezed
abstract class DetallePropuestaEntrevistaEmpleadoDTO implements _$DetallePropuestaEntrevistaEmpleadoDTO {
  const DetallePropuestaEntrevistaEmpleadoDTO._();
  factory DetallePropuestaEntrevistaEmpleadoDTO({
    required String uuid,
    required String fechaPautada,
    required String asunto,
    required String estatus,
    String? vinculo
  }) = _DetallePropuestaEntrevistaEmpleadoDTO;

  factory DetallePropuestaEntrevistaEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$DetallePropuestaEntrevistaEmpleadoDTOFromJson(json);

  Entrevista toDomain() {
    return Entrevista(
     uuid: Identificador.fromUniqueString(uuid),
     fechaPautada: Fecha(formatoFecha.parse(fechaPautada)),
     asuntoEntrevista: AsuntoEntrevista(asunto),
     estadoEntrevista: EstadoEntrevista(estatus),
     uuidPersonalAdministrativo: Identificador(),
     //? VINCULO
    );
  }
}