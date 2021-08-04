import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/entidades/entidad.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/oferta_laboral/titulo.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/estado_postulacion.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';
part 'postulacion_oferta.freezed.dart';

@freezed
abstract class PostulacionOfertaLaboral implements _$PostulacionOfertaLaboral {
  const PostulacionOfertaLaboral._();
  @Implements(IEntidad)
  const factory PostulacionOfertaLaboral({
    required Identificador uuid,
    required Identificador uuidOfertaLaboral,
    required Identificador uuidEmpleado,
    required Identificador uuidEmpresa,
    TituloOfertaLaboral? tituloOferta,
    Cargo? cargoOferta,
    NombreEmpresa? nombreEmpresa,
    ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral,
    EstadoPostulacionOfertaLaboral? estado,
  }) = _PostulacionOfertaLaboral;

  Option<ValorErroneo<dynamic>> get falloOpcion {
    return (tituloOferta!.failureOrUnit)
        .andThen(cargoOferta!.failureOrUnit)
        .andThen(nombreEmpresa!.failureOrUnit)
        .fold((fallo) => some(fallo), (_) => none());
  }
}
