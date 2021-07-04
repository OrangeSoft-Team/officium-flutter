import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/Duracion_Oferta/duracion_estimada.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/descripcion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/estado_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/numero_vacantes.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/sueldo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/titulo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/turno_trabajo.dart';
part 'oferta_laboral.freezed.dart';

@freezed
abstract class OfertaLaboral implements _$OfertaLaboral {
  const OfertaLaboral._();
  @Implements(IEntitidad)
  const factory OfertaLaboral({
    required Identificador uuid,
    required TituloOfertaLaboral titulo,
    required Fecha fechaPublicacion,
    Fecha? fechaModificacion,
    required Cargo cargo,
    required Sueldo sueldo,
    required DescripcionOferta descripcionOferta,
    required Duracion duracion,
    required TurnoTrabajo turno,
    required NumeroVacantes numeroVacantes,
    Identificador? uuidEmpresa,
    EstadoOferta? estadoOferta,
    required NombreEmpresa nombreEmpresa,
  }) = _OfertaLaboral;

//Devuelve un Valor Erroneo si la oferta Laboral tiene por lo menos 1
  Option<ValorErroneo<dynamic>> get falloOpcion {
    return uuid.failureOrUnit
        .andThen(titulo.failureOrUnit)
        .andThen(fechaPublicacion.failureOrUnit)
        .andThen(cargo.failureOrUnit)
        .andThen(sueldo.failureOrUnit)
        .andThen(duracion.failureOrUnit)
        .andThen(turno.failureOrUnit)
        .andThen(numeroVacantes.failureOrUnit)
        .andThen(nombreEmpresa.failureOrUnit)
        .fold((fallo) => some(fallo), (_) => none());
  }
}
