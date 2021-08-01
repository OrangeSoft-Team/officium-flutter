import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_string_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/validadores_postulacion/validador_estado_postulacion.dart';

class EstadoPostulacionOfertaLaboral extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  static const turnos = ["APROBADA", "RECHAZADA", "EN PROGRESO"];

  factory EstadoPostulacionOfertaLaboral(String turno) {
    return EstadoPostulacionOfertaLaboral._(
        validadorEstadoPostulacion(turno, turnos)
            .flatMap(validadorStringNoVacio));
  }

  const EstadoPostulacionOfertaLaboral._(this.value);
}
