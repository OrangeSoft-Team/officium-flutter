import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/Duracion_Oferta/duracion_escalas.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/Duracion_Oferta/duracion_estimada.dart';
import 'package:officium_flutter/dominio/mooc/entidades/certificado.dart';
import 'package:officium_flutter/dominio/mooc/entidades/curso.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/certificado/descripcion_certificado.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/curso/titulo_curso.dart';
part 'lista_curso_dto.freezed.dart';
part 'lista_curso_dto.g.dart';

final formatoFecha = DateFormat("dd/MM/yyyy");
@freezed
abstract class ListaCursoDTO implements _$ListaCursoDTO {
  const ListaCursoDTO._();
  factory ListaCursoDTO({
    required String uuid,
    required String titulo,
    required String estatus,
    required String fechaCreacion
  }) = _ListaCursoDTO;

  factory ListaCursoDTO.fromJson(Map<String, dynamic> json) =>
    _$ListaCursoDTOFromJson(json);

  Curso toDomain() {
    return Curso(
     uuid: Identificador.fromUniqueString(uuid),
     tituloCurso: TituloCurso(titulo),
     duracionEstimada: Duracion(DuracionEscala(0,'')),
     fechaCreacion: Fecha(formatoFecha.parse(fechaCreacion)),
     lecciones: [],
     habilidades: [],
    );
  }
}