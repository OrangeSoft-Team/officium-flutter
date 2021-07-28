import 'package:dartz/dartz.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/modelos/actualizar_experiencia_laboral_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/modelos/crear_experiencia_laboral_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/modelos/experiencia_laboral_empleado_dto.dart';

abstract class IExperienciaLaboralFuente {
  //OBTIENE EXPERIENCIAS LABORALES DE UN EMPLEADO
  Future<List<ExperienciaLaboralEmpleadoDTO>> obtenerExperienciasLaborales(String uuidEmpleado);
  //REGISTRA EXPERIENCIA LABORALE DE UN EMPLEADO
  Future<ExperienciaLaboralEmpleadoDTO> crearExperienciaLaboral(CrearExperienciaLaboralEmpleadoDTO nuevaExperienciaLaboral);
  //ACTUALIZA EXPERIENCIA LABORALE DE UN EMPLEADO
  Future<ExperienciaLaboralEmpleadoDTO> actualizarExperienciaLaboral(String uuidExperienciaLaboral,ActualizarExperienciaLaboralEmpleadoDTO experienciaActualizada);
  //ELIMINA EXPERIENCIA LABORALE DE UN EMPLEADO
  Future<Unit> eliminarExperienciaLaboral(String uuidExperienciaLaboral);
}