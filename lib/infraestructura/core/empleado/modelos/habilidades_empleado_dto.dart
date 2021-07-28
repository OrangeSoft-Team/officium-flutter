import 'package:freezed_annotation/freezed_annotation.dart';
part 'habilidades_empleado_dto.freezed.dart';
part 'habilidades_empleado_dto.g.dart';

@freezed
abstract class HabilidadesEmpleadoDTO implements _$HabilidadesEmpleadoDTO {
  const HabilidadesEmpleadoDTO._();
  factory HabilidadesEmpleadoDTO({
    required List<String> uuid,
  }) = _HabilidadesEmpleadoDTO;

  factory HabilidadesEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$HabilidadesEmpleadoDTOFromJson(json);
  
  /*factory HabilidadesEmpleadoDTO.fromDomain(HabilidadesEmpleado habilidadesEmpleado) {
    return HabilidadesEmpleadoDTO(
     
    );
  }*/

  /*HabilidadesEmpleado toDomain() {
    return HabilidadesEmpleado(
     
    );
  }*/
}