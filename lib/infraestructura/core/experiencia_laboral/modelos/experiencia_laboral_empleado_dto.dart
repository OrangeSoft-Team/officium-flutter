import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/core/entidades/experiencia_laboral.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';
part 'experiencia_laboral_empleado_dto.freezed.dart';
part 'experiencia_laboral_empleado_dto.g.dart';
final formatoFecha = DateFormat("dd/MM/yyyy");
@freezed
abstract class ExperienciaLaboralEmpleadoDTO implements _$ExperienciaLaboralEmpleadoDTO {
  const ExperienciaLaboralEmpleadoDTO._();
  factory ExperienciaLaboralEmpleadoDTO({
    required String uuid,
    required String cargo,
    required String nombreEmpresa,
    required String fechaInicio,
    String? fechaFin,
  }) = _ExperienciaLaboralEmpleadoDTO;

  factory ExperienciaLaboralEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$ExperienciaLaboralEmpleadoDTOFromJson(json);
  
  /*factory ExperienciaLaboralEmpleadoDTO.fromDomain(ExperienciaLaboralEmpleado cuestionario) {
    return ExperienciaLaboralEmpleadoDTO(
     
    );
  }*/

  ExperienciaLaboral toDomain() {
    return ExperienciaLaboral(
      uuid: Identificador.fromUniqueString(uuid),
      cargo: Cargo(cargo),
      nombreEmpresa: NombreEmpresa(nombreEmpresa),
      fechaInicio: Fecha(formatoFecha.parse(fechaInicio)),
      fechaFin: Fecha(formatoFecha.parse(fechaFin!))
    );
  }
}