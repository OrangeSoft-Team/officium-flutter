import 'package:freezed_annotation/freezed_annotation.dart';
part 'detalle_propuesta_entrevista_empleado_dto.freezed.dart';
part 'detalle_propuesta_entrevista_empleado_dto.g.dart';

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
  
  /*factory DetallePropuestaEntrevistaEmpleadoDTO.fromDomain(PostulacionEmpleado PostulacionEmpleado) {
    return DetallePropuestaEntrevistaEmpleadoDTO(
     
    );
  }*/

  /*PostulacionEmpleado toDomain() {
    return PostulacionEmpleado(
     
    );
  }*/
}