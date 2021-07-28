import 'package:freezed_annotation/freezed_annotation.dart';
part 'datos_inicio_sesion_empleado_dto.freezed.dart';
part 'datos_inicio_sesion_empleado_dto.g.dart';
@freezed
abstract class DatosInicioSesionEmpleadoDTO implements _$DatosInicioSesionEmpleadoDTO {
  const DatosInicioSesionEmpleadoDTO._();
  factory DatosInicioSesionEmpleadoDTO({
    required String correoElectronico,
    required String token
  }) = _DatosInicioSesionEmpleadoDTO;

  factory DatosInicioSesionEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$DatosInicioSesionEmpleadoDTOFromJson(json);
  
  /*factory DatosInicioSesionEmpleadoDTO.fromDomain(DatosInicioSesionEmpleado DatosInicioSesionEmpleado) {
    return DatosInicioSesionEmpleadoDTO(
     
    );
  }*/

  /*DatosInicioSesionEmpleado toDomain() {
    return DatosInicioSesionEmpleado(
     
    );
  }*/
}