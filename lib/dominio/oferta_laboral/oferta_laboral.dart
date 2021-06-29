import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/descripcion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/estado_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/numero_vacantes.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/sueldo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/titulo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/turno_trabajo.dart';
part 'oferta_laboral.freezed.dart';

@freezed
abstract class OfertaLaboral with _$OfertaLaboral {
  @Implements(IEntitidad)
  const factory OfertaLaboral({
    required Identificador uuid,
    required TituloOfertaLaboral titulo,
    required Fecha fechaPublicacion,
    required Fecha fechaModificacion,
    required Cargo cargo,
    required Sueldo sueldo,
    required DescripcionOferta descripcionOferta,
    required Duration duration,
    required TurnoTrabajo turno,
    required NumeroVacantes numeroVacantes,
    required Identificador uuidEmpresa,
    required EstadoOferta estadoOferta,
    required NombreEmpresa nombreEmpresa,
  }) = _OfertaLaboral;
}
