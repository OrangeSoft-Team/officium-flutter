import 'package:freezed_annotation/freezed_annotation.dart';

part 'autentificacion_excepciones.freezed.dart';

@freezed
abstract class ExcepcionAutentificacion with _$ExcepcionAutentificacion {
  const factory ExcepcionAutentificacion.canceladoPorUsuario() =
      CanceladoPorUsuario;
  const factory ExcepcionAutentificacion.serverError() = ServerError;
  const factory ExcepcionAutentificacion.emailEnUso() = EmailEnUso;
  const factory ExcepcionAutentificacion.emailYPasswordInvalidas() =
      EmailYPasswordInvalidas;
}
