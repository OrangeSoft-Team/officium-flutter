import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/core/entidades/experiencia_laboral.dart';
part 'crear_experiencia_laboral_empleado_dto.freezed.dart';
part 'crear_experiencia_laboral_empleado_dto.g.dart';

@freezed
abstract class CrearExperienciaLaboralEmpleadoDTO implements _$CrearExperienciaLaboralEmpleadoDTO {
  const CrearExperienciaLaboralEmpleadoDTO._();
  factory CrearExperienciaLaboralEmpleadoDTO({
    required String cargo,
    required String nombreEmpresa,
    required String fechaInicio,
    required String fechaFin,
  }) = _CrearExperienciaLaboralEmpleadoDTO;

  factory CrearExperienciaLaboralEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$CrearExperienciaLaboralEmpleadoDTOFromJson(json);
  
  factory CrearExperienciaLaboralEmpleadoDTO.fromDomain(ExperienciaLaboral nuevaExperiencia) {
    return CrearExperienciaLaboralEmpleadoDTO(
      cargo: nuevaExperiencia.cargo.getOrCrash(),
      nombreEmpresa: nuevaExperiencia.nombreEmpresa.getOrCrash(),
      fechaInicio: nuevaExperiencia.fechaInicio.getOrCrash().toString(),
      fechaFin: nuevaExperiencia.fechaFin!.getOrCrash().toString(),
    );
  }
}