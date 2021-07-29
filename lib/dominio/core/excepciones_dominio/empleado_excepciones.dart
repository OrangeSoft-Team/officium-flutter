import 'package:freezed_annotation/freezed_annotation.dart';

part 'empleado_excepciones.freezed.dart';

@freezed
abstract class EmpleadoExcepcion with _$EmpleadoExcepcion {
  const factory EmpleadoExcepcion.errorServidor() = _ErrorServidor;
  const factory EmpleadoExcepcion.errorActualizarExperienciaLaboral() =
      _ErrorActualizarExperienciaLaboral;
  const factory EmpleadoExcepcion.errorEliminarExperienciaLaboral() =
      _ErrorEliminarExperienciaLaboral;
  


}
