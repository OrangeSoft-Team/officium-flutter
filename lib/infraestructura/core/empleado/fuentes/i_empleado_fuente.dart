import 'package:officium_flutter/infraestructura/core/empleado/modelos/actualizar_habilidades_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/empleado/modelos/datos_basicos_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/empleado/modelos/habilidades_empleado_dto.dart';

abstract class IEmpleadoFuente { 
  //OBTIENE PERFIL DE EMPLEADO CONCRETO
  Future<DatosBasicosEmpleadoDTO> obtenerDatosBasicosEmpleado(String uuidEmpleado);
  //OBTIENE LAS HABILIDADES DE UN EMPLEADO EN CONCRETO
  Future<HabilidadesEmpleadoDTO> obtenerHabilidadesEmpleado(String uuidEmpleado);
  //ACTUALIZA LAS HABILDIADES DE UN EMPLEADO EN CONCRETO
  Future<HabilidadesEmpleadoDTO> actualizarHabilidadesEmpleado(ActualizarHabilidadesEmpleadoDTO habilidadesActualizadas);
}