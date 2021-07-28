import 'package:freezed_annotation/freezed_annotation.dart';
part 'actualizar_experiencia_laboral_empleado_dto.freezed.dart';
part 'actualizar_experiencia_laboral_empleado_dto.g.dart';

@freezed
abstract class ActualizarExperienciaLaboralEmpleadoDTO implements _$ActualizarExperienciaLaboralEmpleadoDTO {
  const ActualizarExperienciaLaboralEmpleadoDTO._();
  factory ActualizarExperienciaLaboralEmpleadoDTO({
    required String cargo,
    required String nombreEmpresa,
    required String fechaInicio,
    required String fechaFin,
  }) = _ActualizarExperienciaLaboralEmpleadoDTO;

  factory ActualizarExperienciaLaboralEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$ActualizarExperienciaLaboralEmpleadoDTOFromJson(json);
  
  /*factory ActualizarExperienciaLaboralEmpleadoDTO.fromDomain(ActualizarExperienciaLaboralEmpleado cuestionario) {
    return ActualizarExperienciaLaboralEmpleadoDTO(
     
    );
  }*/

  /*ActualizarExperienciaLaboralEmpleado toDomain() {
    return ActualizarExperienciaLaboralEmpleado(
     
    );
  }*/
}