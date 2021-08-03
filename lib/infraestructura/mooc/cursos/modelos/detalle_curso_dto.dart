import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/Duracion_Oferta/duracion_escalas.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/Duracion_Oferta/duracion_estimada.dart';
import 'package:officium_flutter/dominio/core/entidades/habilidad.dart';
import 'package:officium_flutter/dominio/mooc/entidades/curso.dart';
import 'package:officium_flutter/dominio/mooc/entidades/leccion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/curso/titulo_curso.dart';
import 'leccion_lista_dto.dart';
part 'detalle_curso_dto.freezed.dart';
part 'detalle_curso_dto.g.dart';

final formatoFecha = DateFormat("dd/MM/yyyy");
@freezed
abstract class DetalleCursoDTO implements _$DetalleCursoDTO {
  const DetalleCursoDTO._();
  factory DetalleCursoDTO({
    required String uuid,
    required String titulo,
    required String estatus,
    required int valorDuracion,
    required String escalaDuracion,
    required String fechaCreacion,
    required List<LeccionListaDTO> lecciones, 
    required List<String> habilidades,
    required String descripcion,
    String? fechaUltimaModificacion,
    //! certificado
  }) = _DetalleCursoDTO;

  factory DetalleCursoDTO.fromJson(Map<String, dynamic> json) =>
      _$DetalleCursoDTOFromJson(json);

  Curso toDomain() {
    final List<Leccion> lecciones = [];
    final List<Habilidad> habilidades = [];
    return Curso(
     uuid: Identificador.fromUniqueString(uuid),
     tituloCurso: TituloCurso(titulo),
     duracionEstimada: Duracion(DuracionEscala(valorDuracion,escalaDuracion)),
     fechaCreacion: Fecha(formatoFecha.parse(fechaCreacion)),
     fechaUltimaModificacion: Fecha(formatoFecha.parse(fechaUltimaModificacion!)),
     lecciones: lecciones,
     habilidades: habilidades,
    );
  }
}