import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_oferta_laboral_repositorio.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/comentario_postulacion.dart';
import 'package:officium_flutter/dominio/contrataciones/value_objects/postulacion_oferta_laboral/estado_postulacion.dart';

part 'postular_oferta_laboral_event.dart';
part 'postular_oferta_laboral_state.dart';
part 'postular_oferta_laboral_bloc.freezed.dart';

@injectable
class PostularOfertaLaboralBloc
    extends Bloc<PostularOfertaLaboralEvent, PostularOfertaLaboralState> {
  final IContratacionesRepositorio _iOfertaLaboralRepositorio;
  PostularOfertaLaboralBloc(this._iOfertaLaboralRepositorio)
      : super(PostularOfertaLaboralState.inicial());

  @override
  Stream<PostularOfertaLaboralState> mapEventToState(
    PostularOfertaLaboralEvent event,
  ) async* {
    yield* event.map(
      comentarioCambiado: (e) async* {
        yield state.copyWith(
          comentarioPostulacionOfertaLaboral:
              ComentarioPostulacionOfertaLaboral(e.comentarioOfertaLaboral),
          postularFalloOExitoOpcion: none(),
        );
      },
      postulacionRealizada: (e) async* {
        Either<ContratacionExcepcion, Unit> exitoOFallo;
        bool EmpleadoActoParaPostular;
        yield state.copyWith(
          estaPostulando: true,
          postularFalloOExitoOpcion: none(),
        );
        // EmpleadoActoParaPostular = _ValidarPostulacionEmpleado(e.uuidEmpleado);
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

  // Future<bool> _ValidarPostulacionEmpleado(Identificador uuidEmpleado) async {
  //   Stream<Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>>
  //       postulaciones = _iOfertaLaboralRepositorio
  //           .verTodasLasPostulacionesOfertaLaboral(uuidEmpleado);
  //   if (await postulaciones.isEmpty) {
  //     return false;
  //   }
  //   postulaciones.map((postulacionOExcepcion) => postulacionOExcepcion.fold(
  //       (l) => null, (postulaciones) => postulaciones.map((postulacion){
  //         if(postulacion.estado.value == "")

  //       })));
  // }
}
