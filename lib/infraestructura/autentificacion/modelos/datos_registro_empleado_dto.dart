import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
part 'datos_registro_empleado_dto.freezed.dart';
part 'datos_registro_empleado_dto.g.dart';

final formatoFecha = DateFormat("dd/MM/yyyy");//OPTIM

@freezed
abstract class DatosRegistroEmpleadoDTO implements _$DatosRegistroEmpleadoDTO {
  const DatosRegistroEmpleadoDTO._();

  factory DatosRegistroEmpleadoDTO({
    required String correoElectronico,
    required String token,
    required String primerNombre,
    String? segundoNombre,
    required  String primerApellido,
    String? segundoApellido,
    required String genero,
    required String nivelEducativo,
    required  String numeroTelefonico,
    required String fechaNacimiento,
    required String codigoPostal,
    required String calleUno,
    String? calleDos,
    required String uuidPais,
    required String uuidEstado,
    required String uuidCiudad,
  }) = _DatosRegistroEmpleadoDTO;

  factory DatosRegistroEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$DatosRegistroEmpleadoDTOFromJson(json);

  /*factory DatosRegistroEmpleadoDTO.fromDomain(DatosRegistroEmpleado datosRegistroEmpleado) {
    return DatosRegistroEmpleadoDTO(
     
    );
  }
  Empleado toDomain() {
    return Empleado(
        
  }*/
}