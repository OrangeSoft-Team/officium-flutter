import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/trabajo.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/trabajo/estado_trabajo.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/trabajo/titulo_trabajo.dart';
part 'trabajo_empleado_dto.freezed.dart';
part 'trabajo_empleado_dto.g.dart';

final formatoFecha = DateFormat("dd/MM/yyyy");
@freezed
abstract class TrabajoEmpleadoDTO implements _$TrabajoEmpleadoDTO {
  const TrabajoEmpleadoDTO._();
  factory TrabajoEmpleadoDTO({
    required String uuid,
    required String titulo,
    required String fechaInicioTrabajo,
    required String cargo,
    required String nombreEmpresa,
    required String estatus
  }) = _TrabajoEmpleadoDTO;

  factory TrabajoEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$TrabajoEmpleadoDTOFromJson(json);

  Trabajo toDomain() {
    return Trabajo(
     uuid: Identificador.fromUniqueString(uuid),
     tituloOfertaLaboral: TituloTrabajo(titulo),
     fechaInicio: Fecha(formatoFecha.parse(fechaInicioTrabajo)),
     estadoTrabajo: EstadoTrabajo(estatus),
    );
  }
}