import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/Duracion_Oferta/duracion_escalas.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/Duracion_Oferta/duracion_estimada.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/numero_vacantes.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/sueldo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/titulo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/turno_trabajo.dart';
part 'oferta_laboral_dto.freezed.dart';
part 'oferta_laboral_dto.g.dart';

@freezed
abstract class OfertaLaboralDTO implements _$OfertaLaboralDTO {
  const OfertaLaboralDTO._();
  factory OfertaLaboralDTO({
    required String uuid,
    required String titulo,
    required String fechaPublicacion,
    required String cargo,
    required double sueldo,
    required int duracionEstimadaValor,
    required String duracionEstimadaEscala,
    required String turnoTrabajo,
    required int numeroVacantes,
    required String empresaNombre,
  }) = _OfertaLaboralDTO;

  factory OfertaLaboralDTO.fromJson(Map<String, dynamic> json) =>
      _$OfertaLaboralDTOFromJson(json);

  factory OfertaLaboralDTO.fromDomain(OfertaLaboral ofertaLaboral) {
    return OfertaLaboralDTO(
      uuid: ofertaLaboral.uuid.getOrCrash(),
      titulo: ofertaLaboral.titulo.getOrCrash(),
      fechaPublicacion: ofertaLaboral.fechaPublicacion.getOrCrash().toString(),
      cargo: ofertaLaboral.cargo.toString(),
      sueldo: ofertaLaboral.sueldo.getOrCrash(),
      duracionEstimadaValor: ofertaLaboral.duracion.getOrCrash().duracion,
      duracionEstimadaEscala: ofertaLaboral.duracion.getOrCrash().escala,
      turnoTrabajo: ofertaLaboral.turno.getOrCrash(),
      numeroVacantes: ofertaLaboral.numeroVacantes.getOrCrash(),
      empresaNombre: ofertaLaboral.nombreEmpresa.getOrCrash(),
    );
  }
  OfertaLaboral toDomain() {
    return OfertaLaboral(
        uuid: Identificador.fromUniqueString(uuid),
        titulo: TituloOfertaLaboral(titulo),
        fechaPublicacion: Fecha(DateTime.parse(fechaPublicacion)),
        cargo: Cargo(cargo),
        sueldo: Sueldo(sueldo),
        duracion: Duracion(
            DuracionEscala(duracionEstimadaValor, duracionEstimadaEscala)),
        turno: TurnoTrabajo(turnoTrabajo),
        numeroVacantes: NumeroVacantes(numeroVacantes),
        nombreEmpresa: NombreEmpresa(empresaNombre));
  }
}
