import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/descripcion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/estado_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/numero_vacantes.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/sueldo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/titulo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/turno_trabajo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/postulacion_oferta_laboral/estado_postulacion.dart';
part 'oferta_laboral_dto.freezed.dart';

@freezed
abstract class OfertaLaboralDTO with _$OfertaLaboralDTO{
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

  factory OfertaLaboralDTO.fromJson(Map<String, dynamic> json) => _$OfertaLaboralDTOFromJson(json);


  factory OfertaLaboralDTO.fromDomain(OfertaLaboral ofertaLaboral) {
    return OfertaLaboralDTO(
      uuid:ofertaLaboral.uuid.getOrCrash(),
      titulo:ofertaLaboral.titulo.getOrCrash(),
      fechaPublicacion:ofertaLaboral.fechaPublicacion.getOrCrash().toString(),
      cargo:ofertaLaboral.cargo.toString(),
      sueldo:ofertaLaboral.sueldo.getOrCrash(),
      duracionEstimadaValor:ofertaLaboral.duration.inDays,//!
      duracionEstimadaEscala:'',//!
      turnoTrabajo:ofertaLaboral.turno.getOrCrash(),
      numeroVacantes:ofertaLaboral.numeroVacantes.getOrCrash(),
      empresaNombre:ofertaLaboral.nombreEmpresa.getOrCrash(),
    );
  }
}


extension OfertaLaboralDTOX on OfertaLaboralDTO {
  OfertaLaboral toDomain() {
    return OfertaLaboral (
      uuid: Identificador.fromUniqueString(uuid),
      titulo: TituloOfertaLaboral(titulo),
      fechaPublicacion: Fecha(DateTime.parse(fechaPublicacion)),
      fechaModificacion: Fecha(DateTime.now()),//!
      cargo: Cargo(cargo),
      sueldo: Sueldo(sueldo,sueldo),//!
      descripcionOferta: DescripcionOferta('Test Descripción'),//!
      duration: Duration(days:duracionEstimadaValor),//!
      turno: TurnoTrabajo(turnoTrabajo),//!
      numeroVacantes: NumeroVacantes(numeroVacantes,numeroVacantes,1),//!
      uuidEmpresa: Identificador(),//!
      estadoOferta: EstadoOferta(estadoOfertalaboral.aprobada.toString()),//!
      nombreEmpresa: NombreEmpresa(empresaNombre),
    );
  }
}