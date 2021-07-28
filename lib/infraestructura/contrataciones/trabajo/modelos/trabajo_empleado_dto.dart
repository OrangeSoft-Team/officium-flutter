import 'package:freezed_annotation/freezed_annotation.dart';
part 'trabajo_empleado_dto.freezed.dart';
part 'trabajo_empleado_dto.g.dart';

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
  
  /*factory TrabajoEmpleadoDTO.fromDomain(TrabajoEmpleado trabajoEmpleado) {
    return TrabajoEmpleadoDTO(
     
    );
  }*/

  /*TrabajoEmpleado toDomain() {
    return TrabajoEmpleado(
     
    );
  }*/
}