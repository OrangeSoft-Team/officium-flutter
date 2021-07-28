import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/infraestructura/comun/modelos/habilidad_dto.dart';
part 'datos_basicos_empleado_dto.freezed.dart';
part 'datos_basicos_empleado_dto.g.dart';

@freezed
abstract class DatosBasicosEmpleadoDTO implements _$DatosBasicosEmpleadoDTO {
  const DatosBasicosEmpleadoDTO._();
  factory DatosBasicosEmpleadoDTO({
    required String correoElectronico,
    required String token,
    required String primerNombre,
    String? segundoNombre,
    required  String primerApellido,
    String? segundoApellido,
    required String genero,
    required String nivelEducativo,
    required String numeroTelefonico,
    required String fechaNacimiento,
    required String codigoPostal,
    required String calleUno,
    String? calleDos,
    required String uuidPais,
    required String uuidEstado,
    required String uuidCiudad,
    List<HabilidadDTO>? habilidades, 
  }) = _DatosBasicosEmpleadoDTO;

  factory DatosBasicosEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$DatosBasicosEmpleadoDTOFromJson(json);
  
  /*factory DatosBasicosEmpleadoDTO.fromDomain(HabilidadesEmpleado DatosBasicosEmpleado) {
    return DatosBasicosEmpleadoDTO(
     
    );
  }*/

  /*HabilidadesEmpleado toDomain() {
    return DatosBasicosEmpleado(
     
    );
  }*/
}