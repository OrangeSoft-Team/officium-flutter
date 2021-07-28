import 'package:freezed_annotation/freezed_annotation.dart';
part 'experiencia_laboral_empleado_dto.freezed.dart';
part 'experiencia_laboral_empleado_dto.g.dart';

@freezed
abstract class ExperienciaLaboralEmpleadoDTO implements _$ExperienciaLaboralEmpleadoDTO {
  const ExperienciaLaboralEmpleadoDTO._();
  factory ExperienciaLaboralEmpleadoDTO({
    required String uuid,
    required String cargo,
    required String nombreEmpresa,
    required String fechaInicio,
    required String fechaFin,
  }) = _ExperienciaLaboralEmpleadoDTO;

  factory ExperienciaLaboralEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$ExperienciaLaboralEmpleadoDTOFromJson(json);
  
  /*factory ExperienciaLaboralEmpleadoDTO.fromDomain(ExperienciaLaboralEmpleado cuestionario) {
    return ExperienciaLaboralEmpleadoDTO(
     
    );
  }*/

  /*ExperienciaLaboralEmpleado toDomain() {
    return ExperienciaLaboralEmpleado(
     
    );
  }*/
}