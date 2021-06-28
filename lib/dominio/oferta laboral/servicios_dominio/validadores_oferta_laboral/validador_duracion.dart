import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/excepciones_dominio/valores_errones_value_object/factoria_valor_erroneo.dart';
import 'package:officium_flutter/dominio/oferta%20laboral/servicios_dominio/validadores_oferta_laboral/validador_duracion_escala_vacio.dart';
import 'package:officium_flutter/dominio/oferta%20laboral/servicios_dominio/validadores_oferta_laboral/validador_duracion_estimada_vacia.dart';
import 'package:officium_flutter/dominio/oferta%20laboral/servicios_dominio/validadores_oferta_laboral/validador_duracion_estimada_valor_valido.dart';
import 'package:officium_flutter/dominio/oferta%20laboral/servicios_dominio/validadores_oferta_laboral/validador_duracion_escala_invalido.dart';
import 'package:officium_flutter/dominio/oferta%20laboral/value%20objects/Duracion_Oferta/duracion_escalas.dart';

Either<ValorErroneo<DuracionEscala>, DuracionEscala>
    validadorDuracionOfertaValida(
        DuracionEscala duracionEscala,
        List<String> escalasValidas,
        int minValorDuracion,
        int maxValorDuracion) {
  final bool duracionEstimadaValorValida = validadorDuracionEstimadaValor(
      duracionEscala.duracion, minValorDuracion, maxValorDuracion);
  final bool duracionEstimadaValorVacio =
      validadorDuracionEstimadaValorVacio(duracionEscala.duracion);
  final bool duracionEscalaValida =
      validadorDuracionEscalaInvalida(duracionEscala.escala, escalasValidas);
  final bool duracionEscalaVacia =
      validadorDuracionEscalaVacio(duracionEscala.escala);

  if (duracionEstimadaValorValida &&
      duracionEstimadaValorVacio == false &&
      duracionEscalaValida &&
      duracionEscalaVacia == false) {
    return right(duracionEscala);
  } else if (duracionEscalaValida == false) {
    return left(ValorErroneo.duractionEstimadaEscalaInvalida(
        escalaInvalida: duracionEscala, escalasValidas: escalasValidas));
  } else if (duracionEscalaVacia == false) {
    return left(ValorErroneo.duracionEstimadaEscalaVacia(
      valorInvalido: duracionEscala,
    ));
  } else if (duracionEstimadaValorVacio) {
    return left(
        ValorErroneo.duracionEstimadaValorVacio(valorInvalido: duracionEscala));
  } else {
    return left(ValorErroneo.duracionEstimadaValorInvalido(
        valorInvalido: duracionEscala,
        minValor: minValorDuracion,
        maxValor: maxValorDuracion));
  }
}
