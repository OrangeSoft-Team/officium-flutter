import 'package:freezed_annotation/freezed_annotation.dart';
part 'detalle_trabajo_empleado_dto.freezed.dart';
part 'detalle_trabajo_empleado_dto.g.dart';

@freezed
abstract class DetalleTrabajoEmpleadoDTO implements _$DetalleTrabajoEmpleadoDTO {
  const DetalleTrabajoEmpleadoDTO._();
  factory DetalleTrabajoEmpleadoDTO({
    required String uuid,
    required String titulo,
    required String cargo,
    required String uuidEmpresa,
    required String nombreEmpresa,
    required String direccionEmpresa,
    required List<String> numeroTelefonicos,
    required double sueldo,
    required String descripcion,
    required int valorDuracion,
    required String escalaDuracion,
    required String turnoTrabajo,
    required String fechaInicioTrabajo,
    String? fechaCulminacionTrabajo,
    required String estatus
  }) = _DetalleTrabajoEmpleadoDTO;

  factory DetalleTrabajoEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$DetalleTrabajoEmpleadoDTOFromJson(json);
  
  /*factory DetalleTrabajoEmpleadoDTO.fromDomain(TrabajoEmpleado trabajoEmpleado) {
    return DetalleTrabajoEmpleadoDTO(
     
    );
  }*/

  /*TrabajoEmpleado toDomain() {
    return TrabajoEmpleado(
     
    );
  }*/
}