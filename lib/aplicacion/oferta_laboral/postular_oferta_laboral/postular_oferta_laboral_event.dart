part of 'postular_oferta_laboral_bloc.dart';

@freezed
class PostularOfertaLaboralEvent with _$PostularOfertaLaboralEvent {
  const factory PostularOfertaLaboralEvent.comentarioCambiado(
      String comentarioOfertaLaboral) = _ComentarioCambiado;
  const factory PostularOfertaLaboralEvent.postulacionRealizada(
      Identificador uuidOfertaLaboral,
      Identificador uuidEmpleado,
      Identificador uuidEmpresa) = _PostulacionRealizada;
}
