import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/Duracion_Oferta/duracion_estimada.dart';
import 'package:officium_flutter/dominio/core/entidades/habilidad.dart';
import 'package:officium_flutter/dominio/mooc/entidades/certificado.dart';
import 'package:officium_flutter/dominio/mooc/entidades/leccion.dart';
import 'package:officium_flutter/dominio/mooc/value_objects/curso/titulo_curso.dart';

part 'curso.freezed.dart';

@freezed
abstract class Curso with _$Curso {
  @Implements(IEntidad)
  const factory Curso({
    required Identificador uuid,
    required TituloCurso tituloCurso,
    required Duracion duracionEstimada,
    required Fecha fechaCreacion,
    Fecha? fechaUltimaModificacion,
    required List<Habilidad> habilidades,
    required List<Leccion> lecciones,
    required Certificado certificado,
  }) = _Curso;
}
