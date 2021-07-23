import 'package:freezed_annotation/freezed_annotation.dart';
part 'postulacion_empleado_dto.freezed.dart';
part 'postulacion_empleado_dto.g.dart';

@freezed
abstract class PostulacionEmpleadoDTO implements _$PostulacionEmpleadoDTO {
  const PostulacionEmpleadoDTO._();
  factory PostulacionEmpleadoDTO({
    required String uuid,
    required String uuidOfertaLaboral,
    required String tituloOferta,
    required String cargoOferta,
    required String estatus,
    required String nombreEmpresa,
    String? comentario
  }) = _PostulacionEmpleadoDTO;

  factory PostulacionEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$PostulacionEmpleadoDTOFromJson(json);
  
  /*factory PostulacionEmpleadoDTO.fromDomain(PostulacionEmpleado PostulacionEmpleado) {
    return PostulacionEmpleadoDTO(
     
    );
  }*/

  /*PostulacionEmpleado toDomain() {
    return PostulacionEmpleado(
     
    );
  }*/
}