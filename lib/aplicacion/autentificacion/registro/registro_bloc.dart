import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/autentificacion/excepciones_dominio/autentificacion_excepciones.dart';
import 'package:officium_flutter/dominio/autentificacion/servicios_dominio/fachadas/i_fachada_autentificacion.dart';
import 'package:officium_flutter/dominio/autentificacion/vaue_objecs/email.dart';
import 'package:officium_flutter/dominio/autentificacion/vaue_objecs/password.dart';
import 'package:officium_flutter/dominio/comun/value_objects/genero.dart';
import 'package:officium_flutter/dominio/empleado/entidades/empleado.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/codigo_postal.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/direccion_calle.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/fecha_nacimiento.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/numero_telefonico.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/primer_apellido.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/primer_nombre.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/segundo_apellido.dart';
import 'package:officium_flutter/dominio/empleado/value_objects/segundo_nombre.dart';

part 'registro_event.dart';
part 'registro_state.dart';
part 'registro_bloc.freezed.dart';

@injectable
class RegistroBloc extends Bloc<RegistroEvent, RegistroState> {
  final IAutentificacionFachada _iAutentificacionFachada;
  RegistroBloc(this._iAutentificacionFachada) : super(RegistroState.inicial());

  @override
  Stream<RegistroState> mapEventToState(
    RegistroEvent event,
  ) async* {
    yield* event.map(
      emailCambiado: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.email),
          opcionDeErrorOExitoDeRegistro: none(),
        );
      },
      passwordCambiado: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          opcionDeErrorOExitoDeRegistro: none(),
        );
      },
      primerNombreCambiado: (e) async* {
        yield state.copyWith(
          empleado: state.empleado.copyWith(
            primerNombre: PrimerNombre(e.primerNombre),
          ),
          opcionDeErrorOExitoDeRegistro: none(),
        );
      },
      segundoNombreCambiado: (e) async* {
        yield state.copyWith(
          empleado: state.empleado.copyWith(
            segundoNombre: SegundoNombre(e.segundoNombre),
          ),
          opcionDeErrorOExitoDeRegistro: none(),
        );
      },
      primerApellidoCambiado: (e) async* {
        yield state.copyWith(
          empleado: state.empleado.copyWith(
            primerApellido: PrimerApellido(e.primerApellido),
          ),
          opcionDeErrorOExitoDeRegistro: none(),
        );
      },
      segundoApellidoCambiado: (e) async* {
        yield state.copyWith(
          empleado: state.empleado.copyWith(
            segundoApellido: SegundoApellido(e.segundoApellido),
          ),
          opcionDeErrorOExitoDeRegistro: none(),
        );
      },
      generoCambiado: (e) async* {
        yield state.copyWith(
          empleado: state.empleado.copyWith(
            genero: Genero(e.genero),
          ),
          opcionDeErrorOExitoDeRegistro: none(),
        );
      },
      direccionCalleCambiado: (e) async* {
        yield state.copyWith(
          empleado: state.empleado.copyWith(
            direccionCalle: DireccionCalle(e.direccionCalle),
          ),
          opcionDeErrorOExitoDeRegistro: none(),
        );
      },
      telefonoCambiado: (e) async* {
        yield state.copyWith(
          empleado: state.empleado.copyWith(
            numeroTelefonico: NumeroTelefonico(e.telefono),
          ),
          opcionDeErrorOExitoDeRegistro: none(),
        );
      },
      codigoPostalCambiado: (e) async* {
        yield state.copyWith(
          empleado: state.empleado.copyWith(
            codigoPostal: CodigoPostal(e.codigoPostal),
          ),
          opcionDeErrorOExitoDeRegistro: none(),
        );
      },
      fechaNacimientoCambiado: (e) async* {
        yield state.copyWith(
          empleado: state.empleado.copyWith(
            fechaNacimiento: FechaNacimiento(e.fechaNacimiento),
          ),
          opcionDeErrorOExitoDeRegistro: none(),
        );
      },
      registrarConDatosBasicosPresionado: (e) async* {
        Either<ExcepcionAutentificacion, Unit> falloOExito =
            const Right<ExcepcionAutentificacion, Unit>(unit);

        final isEmailValido = state.emailAddress.isValid();
        final isPasswordValido = state.password.isValid();

        if ((isEmailValido && isPasswordValido) &&
            state.empleado.opcionFallo.isNone()) {
          yield state.copyWith(
            estaEnviando: true,
            opcionDeErrorOExitoDeRegistro: none(),
          );

          falloOExito = await _iAutentificacionFachada.registarConDatosBasicos(
            empleado: state.empleado,
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }

        yield state.copyWith(
          estaEnviando: false,
          mostrarMensajesError: true,
          opcionDeErrorOExitoDeRegistro: optionOf(falloOExito),
        );
      },
      registrarConGooglePresionado: (e) async* {},
    );
  }
}
