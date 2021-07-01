import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/oferta_laboral/excepciones_dominio/oferta_laboral_excepciones.dart';
import 'package:officium_flutter/dominio/oferta_laboral/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';

part 'postular_oferta_laboral_event.dart';
part 'postular_oferta_laboral_state.dart';
part 'postular_oferta_laboral_bloc.freezed.dart';

class PostularOfertaLaboralBloc
    extends Bloc<PostularOfertaLaboralEvent, PostularOfertaLaboralState> {
  IOfertaLaboralRepositorio _iOfertaLaboralRepositorio;
  PostularOfertaLaboralBloc(this._iOfertaLaboralRepositorio)
      : super(PostularOfertaLaboralState.inicial());

  @override
  Stream<PostularOfertaLaboralState> mapEventToState(
    PostularOfertaLaboralEvent event,
  ) async* {
    event.map(
      comentarioCambiado: (e) async* {},
      postulacionRealizada: (e) async* {
        Either<OfertaLaboralExcepcion, Unit> exitoOFallo;
        yield state.copyWith(
          estaPostulando: true,
          postularFalloOExitoOpcion: none(),
        );

        exitoOFallo = await _iOfertaLaboralRepositorio.aplicarOfertaLaboral(
            e.uuidOfertaLaboral,
            e.uuidEmpleado,
            e.uuidEmpresa,
            state.comentarioPostulacionOfertaLaboral);

        yield state.copyWith(
          estaPostulando: false,
          postularFalloOExitoOpcion: optionOf(exitoOFallo),
        );
      },
    );
  }
}
