import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/Duracion_Oferta/duracion_escalas.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/Duracion_Oferta/duracion_estimada.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/descripcion_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/estado_oferta.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/numero_vacantes.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/sueldo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/titulo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/turno_trabajo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/postulacion_oferta_laboral/estado_postulacion.dart';
part 'oferta_laboral_detalle_dto.freezed.dart';

part 'oferta_laboral_detalle_dto.g.dart';

@freezed
abstract class OfertaLaboralDetalleDTO implements _$OfertaLaboralDetalleDTO {
  const OfertaLaboralDetalleDTO._();
  const factory OfertaLaboralDetalleDTO({
    required String uuid,
    required String titulo,
    required String fechaPublicacion,
    required String fechaModificacion,
    required String cargo,
    required double sueldo,
    required String descripcion,
    required int duracionEstimadaValor,
    required String duracionEstimadaEscala,
    required String turnoTrabajo,
    required int numeroVacantes,
    required String uuidEmpresa,
    required String empresaNombre,
    required String direccionEmpresa,
  }) = _OfertaLaboralDetalleDTO;

  factory OfertaLaboralDetalleDTO.fromJson(Map<String, dynamic> json) =>
      _$OfertaLaboralDetalleDTOFromJson(json);

  OfertaLaboral toDomain() {
    return OfertaLaboral(
      uuid: Identificador.fromUniqueString(uuid),
      titulo: TituloOfertaLaboral(titulo),
      fechaPublicacion: Fecha(DateTime.parse(fechaPublicacion)),
      fechaModificacion: Fecha(DateTime.parse(fechaModificacion)),
      cargo: Cargo(cargo),
      sueldo: Sueldo(sueldo),
      descripcionOferta: DescripcionOferta(descripcion),
      duracion: Duracion(
          DuracionEscala(duracionEstimadaValor, duracionEstimadaEscala)),
      turno: TurnoTrabajo(turnoTrabajo),
      numeroVacantes: NumeroVacantes(numeroVacantes),
      uuidEmpresa: Identificador.fromUniqueString(uuidEmpresa),
      estadoOferta: EstadoOferta("publicado"),
      nombreEmpresa: NombreEmpresa(empresaNombre),
    );
  }
}
