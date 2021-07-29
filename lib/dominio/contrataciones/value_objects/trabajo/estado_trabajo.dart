import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/servicios_dominio/validadores_value_objects/validador_string_no_vacio.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/validadores_trabajo/validador_estado_trabajo.dart';

class EstadoTrabajo extends ValueObject<String> {
  @override
  final Either<ValorErroneo<String>, String> value;

  static const turnos = [
    "EN PROGRESO",
    "CULMINADO",
    "DESPEDIDO",
    "RETIRADO",
  ];

  factory EstadoTrabajo(String estadoActual) {
    return EstadoTrabajo._(validadorEstadoTrabajo(estadoActual, turnos)
        .flatMap(validadorStringNoVacio));
  }

  const EstadoTrabajo._(this.value);
}
