part of 'postular_oferta_laboral_bloc.dart';

@freezed
class PostularOfertaLaboralState with _$PostularOfertaLaboralState {
  const factory PostularOfertaLaboralState({
    ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral,
    required bool estaPostulando,
    required Option<Either<OfertaLaboralExcepcion, Unit>>
        postularFalloOExitoOpcion,
  }) = _PostularOfertaLaboralState;

  factory PostularOfertaLaboralState.inicial() => _PostularOfertaLaboralState(
        estaPostulando: false,
        postularFalloOExitoOpcion: none(),
      );
}
