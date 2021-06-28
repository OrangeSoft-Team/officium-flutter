import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value%20objects/cargo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value%20objects/descripcion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value%20objects/estado_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value%20objects/numero_vacantes.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value%20objects/sueldo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value%20objects/titulo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value%20objects/turno_trabajo.dart';
part 'oferta_laboral.freezed.dart';

@freezed
abstract class OfertaLaboral with _$OfertaLaboral {
  @Implements(IEntitidad)
  const factory OfertaLaboral({
    required Identificador uuid,
    required TituloOfertaLaboral titulo,
    required Cargo cargo,
    required Sueldo sueldo,
    required DescripcionOferta descripcionOferta,
    required Duration duration,
    required TurnoTrabajo turno,
    required NumeroVacantes numeroVacantes,
    required EstadoOferta estadoOferta,
  }) = _OfertaLaboral;
}
