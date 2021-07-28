import 'package:freezed_annotation/freezed_annotation.dart';
part 'respuesta_inicio_sesion_empelado_dto.freezed.dart';
part 'respuesta_inicio_sesion_empelado_dto.g.dart';
@freezed
abstract class RespuestaInicioSesionEmpleadoDTO implements _$RespuestaInicioSesionEmpleadoDTO {
  const RespuestaInicioSesionEmpleadoDTO._();
  factory RespuestaInicioSesionEmpleadoDTO({
    required String tokenSesion,
    required String uuidEmpleado,
  }) = _RespuestaInicioSesionEmpleadoDTO;

  factory RespuestaInicioSesionEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$RespuestaInicioSesionEmpleadoDTOFromJson(json);
  
  /*factory RespuestaInicioSesionEmpleadoDTO.fromDomain(RespuestaInicioSesionEmpleado RespuestaInicioSesionEmpleado) {
    return RespuestaInicioSesionEmpleadoDTO(
     
    );
  }*/

  /*RespuestaInicioSesionEmpleado toDomain() {
    return RespuestaInicioSesionEmpleado(
     
    );
  }*/
}