import 'package:freezed_annotation/freezed_annotation.dart';
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
  
  /*factory CrearExperienciaLaboralEmpleadoDTO.fromDomain(CrearExperienciaLaboralEmpleado cuestionario) {
    return CrearExperienciaLaboralEmpleadoDTO(
     
    );
  }*/

  /*CrearExperienciaLaboralEmpleado toDomain() {
    return CrearExperienciaLaboralEmpleado(
     
    );
  }*/
}