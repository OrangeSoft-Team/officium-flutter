import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/core/excepciones_dominio/empleado_excepciones.dart';
import 'package:officium_flutter/dominio/core/entidades/habilidad.dart';
import 'package:officium_flutter/dominio/core/entidades/experiencia_laboral.dart';
import 'package:officium_flutter/dominio/core/entidades/empleado.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/core/servicios_dominio/repositorios/i_empleado_repositorio.dart';
import 'package:officium_flutter/infraestructura/comun/local_storage/fuentes/i_fuente_local.dart';
import 'package:officium_flutter/infraestructura/core/empleado/fuentes/i_empleado_fuente.dart';
import 'package:officium_flutter/infraestructura/core/empleado/modelos/actualizar_habilidades_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/empleado/modelos/datos_basicos_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/empleado/modelos/habilidades_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/fuentes/i_experiencia_laboral_fuente.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/modelos/actualizar_experiencia_laboral_empleado_dto.dart';
import 'package:officium_flutter/infraestructura/core/experiencia_laboral/modelos/crear_experiencia_laboral_empleado_dto.dart';

@LazySingleton(as: IEmpleadoRepositorio)
class EmpleadoRepositorio implements IEmpleadoRepositorio {
  final IEmpleadoFuente fuenteDeDatosEmpleado;
  final IExperienciaLaboralFuente fuenteDeDatosExperienciaLaboral;
  final IFuenteLocal fuenteLocal;
  
  EmpleadoRepositorio({
    required this.fuenteDeDatosEmpleado,
    required this.fuenteDeDatosExperienciaLaboral,
    required this.fuenteLocal
  });

  @override
  Future<Either<EmpleadoExcepcion, Unit>> actualizarExperienciaLaboral(ExperienciaLaboral experienciaLaboral) async {
    try {
      final respuestaFuente = await fuenteDeDatosExperienciaLaboral.actualizarExperienciaLaboral(experienciaLaboral.uuid.toString(),ActualizarExperienciaLaboralEmpleadoDTO.fromDomain(experienciaLaboral));
      return const Right(unit);
    }
    catch (e) {
      return const Left(EmpleadoExcepcion.errorServidor());
    }
  }

  @override
  Future<Either<EmpleadoExcepcion, Unit>> actualizarListaHabilidadesEmpleado(List<Identificador> listaHabilidades) async {
    final ActualizarHabilidadesEmpleadoDTO nuevasHabilidadesEmpleado = ActualizarHabilidadesEmpleadoDTO(uuid:[]);
    
    for(final habilidad in listaHabilidades){
      nuevasHabilidadesEmpleado.uuid.add(habilidad.toString());
    } 
    
    try {
      final respuestaFuente = await fuenteDeDatosEmpleado.actualizarHabilidadesEmpleado(nuevasHabilidadesEmpleado);
      return const Right(unit);
    }
    catch (e) {
      return const Left(EmpleadoExcepcion.errorServidor());
    }
  }

  @override
  Future<Either<EmpleadoExcepcion, Unit>> crearExperienciaLaboral(ExperienciaLaboral experienciaLaboral) async {
    try {
      final respuestaFuente = await fuenteDeDatosExperienciaLaboral.crearExperienciaLaboral(CrearExperienciaLaboralEmpleadoDTO.fromDomain(experienciaLaboral));
      return const Right(unit);
    }
    catch (e) {
      return const Left(EmpleadoExcepcion.errorServidor());
    }
  }

  @override
  Future<Either<EmpleadoExcepcion, Unit>> eliminarExperienciaLaboral(Identificador uuidExperienciaLaboral) async {
    try {
      final respuestaFuente = await fuenteDeDatosExperienciaLaboral.eliminarExperienciaLaboral(uuidExperienciaLaboral.toString());
      return const Right(unit);
    }
    catch (e) {
      return const Left(EmpleadoExcepcion.errorEliminarExperienciaLaboral());
    }
  }

  @override
  Future<Either<EmpleadoExcepcion, Empleado>> verDatosBasicosEmpleado(Identificador uuidEmpleado) async {
    final DatosBasicosEmpleadoDTO datosBasicosEmpleadoDTO;
    try {
      datosBasicosEmpleadoDTO = await fuenteDeDatosEmpleado.obtenerDatosBasicosEmpleado(uuidEmpleado.toString());
      return Right(datosBasicosEmpleadoDTO.toDomain());
    }
    catch (e) {
      return const Left(EmpleadoExcepcion.errorServidor());
    }
  }

  @override
  Stream<Either<EmpleadoExcepcion, List<ExperienciaLaboral>>> verExperienciasLaboralesEmpleado(Identificador uuidEmpleado) async* {
    final List<ExperienciaLaboral> experienciasEmpleado = <ExperienciaLaboral>[];

    try {
      final respuestaFuente = await fuenteDeDatosExperienciaLaboral.obtenerExperienciasLaborales(uuidEmpleado.toString());
      for(final experiencia in respuestaFuente){
        experienciasEmpleado.add(experiencia.toDomain());
      }
      yield Right(experienciasEmpleado);
    }
    catch (e) {
      yield const Left(EmpleadoExcepcion.errorServidor());
    }
  }

  @override
  Stream<Either<EmpleadoExcepcion, List<Habilidad>>> verHabilidadesEmpleado(Identificador uuidEmpleado) async* {
    final List<Habilidad> habilidadesEmpleado = <Habilidad>[];
    HabilidadesEmpleadoDTO habilidadesEmpleadoDTO;
    try {
      habilidadesEmpleadoDTO = await fuenteDeDatosEmpleado.obtenerHabilidadesEmpleado(await fuenteLocal.obtenerTokenLocal());
      yield Right(habilidadesEmpleado); //!
    }
    catch (e) {
      yield const Left(EmpleadoExcepcion.errorServidor());
    }
  }

  @override
  Stream<Either<EmpleadoExcepcion, List<Habilidad>>> verTodasHabilidades() async* {
    final List<Habilidad> habilidadesEmpleado = <Habilidad>[];
    HabilidadesEmpleadoDTO habilidadesEmpleadoDTO ;
    try {
      habilidadesEmpleadoDTO = await fuenteDeDatosEmpleado.obtenerHabilidadesEmpleado(await fuenteLocal.obtenerTokenLocal());
      yield Right(habilidadesEmpleado); //!
    }
    catch (e) {
      yield const Left(EmpleadoExcepcion.errorServidor());
    }
  }
}
