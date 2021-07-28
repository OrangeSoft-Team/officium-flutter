import 'package:freezed_annotation/freezed_annotation.dart';
part 'actualizar_habilidades_empleado_dto.freezed.dart';
part 'actualizar_habilidades_empleado_dto.g.dart';

@freezed
abstract class ActualizarHabilidadesEmpleadoDTO implements _$ActualizarHabilidadesEmpleadoDTO {
  const ActualizarHabilidadesEmpleadoDTO._();
  factory ActualizarHabilidadesEmpleadoDTO({
    required List<String> uuid,
  }) = _ActualizarHabilidadesEmpleadoDTO;

  factory ActualizarHabilidadesEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$ActualizarHabilidadesEmpleadoDTOFromJson(json);
  
  /*factory ActualizarHabilidadesEmpleadoDTO.fromDomain(ActualizarHabilidadesEmpleado actualizarHabilidadesEmpleado) {
    return ActualizarHabilidadesEmpleadoDTO(
     
    );
  }*/

  /*ActualizarHabilidadesEmpleado toDomain() {
    return ActualizarHabilidadesEmpleado(
     
    );
  }*/
}