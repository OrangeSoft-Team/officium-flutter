part of 'consultar_leccion_bloc.dart';

@freezed
class ConsultarLeccionEvent with _$ConsultarLeccionEvent {
  const factory ConsultarLeccionEvent.verDetalleLeccionEmpezado(
          Identificador uuidCurso, Identificador uuidLeccion) =
      _VerDetalleLeccionEmpezado;
}
