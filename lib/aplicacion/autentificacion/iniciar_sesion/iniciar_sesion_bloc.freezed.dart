// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'iniciar_sesion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IniciarSesionEventTearOff {
  const _$IniciarSesionEventTearOff();

  _EmailCambiado emailCambiado(String email) {
    return _EmailCambiado(
      email,
    );
  }

  _PasswordCambiado passwordCambiado(String password) {
    return _PasswordCambiado(
      password,
    );
  }

  _LoginCorreoYClavePresionado loginCorreoYClavePresionado() {
    return const _LoginCorreoYClavePresionado();
  }
}

/// @nodoc
const $IniciarSesionEvent = _$IniciarSesionEventTearOff();

/// @nodoc
mixin _$IniciarSesionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailCambiado,
    required TResult Function(String password) passwordCambiado,
    required TResult Function() loginCorreoYClavePresionado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailCambiado,
    TResult Function(String password)? passwordCambiado,
    TResult Function()? loginCorreoYClavePresionado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailCambiado value) emailCambiado,
    required TResult Function(_PasswordCambiado value) passwordCambiado,
    required TResult Function(_LoginCorreoYClavePresionado value)
        loginCorreoYClavePresionado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailCambiado value)? emailCambiado,
    TResult Function(_PasswordCambiado value)? passwordCambiado,
    TResult Function(_LoginCorreoYClavePresionado value)?
        loginCorreoYClavePresionado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IniciarSesionEventCopyWith<$Res> {
  factory $IniciarSesionEventCopyWith(
          IniciarSesionEvent value, $Res Function(IniciarSesionEvent) then) =
      _$IniciarSesionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$IniciarSesionEventCopyWithImpl<$Res>
    implements $IniciarSesionEventCopyWith<$Res> {
  _$IniciarSesionEventCopyWithImpl(this._value, this._then);

  final IniciarSesionEvent _value;
  // ignore: unused_field
  final $Res Function(IniciarSesionEvent) _then;
}

/// @nodoc
abstract class _$EmailCambiadoCopyWith<$Res> {
  factory _$EmailCambiadoCopyWith(
          _EmailCambiado value, $Res Function(_EmailCambiado) then) =
      __$EmailCambiadoCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailCambiadoCopyWithImpl<$Res>
    extends _$IniciarSesionEventCopyWithImpl<$Res>
    implements _$EmailCambiadoCopyWith<$Res> {
  __$EmailCambiadoCopyWithImpl(
      _EmailCambiado _value, $Res Function(_EmailCambiado) _then)
      : super(_value, (v) => _then(v as _EmailCambiado));

  @override
  _EmailCambiado get _value => super._value as _EmailCambiado;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailCambiado(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailCambiado implements _EmailCambiado {
  const _$_EmailCambiado(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'IniciarSesionEvent.emailCambiado(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailCambiado &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$EmailCambiadoCopyWith<_EmailCambiado> get copyWith =>
      __$EmailCambiadoCopyWithImpl<_EmailCambiado>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailCambiado,
    required TResult Function(String password) passwordCambiado,
    required TResult Function() loginCorreoYClavePresionado,
  }) {
    return emailCambiado(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailCambiado,
    TResult Function(String password)? passwordCambiado,
    TResult Function()? loginCorreoYClavePresionado,
    required TResult orElse(),
  }) {
    if (emailCambiado != null) {
      return emailCambiado(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailCambiado value) emailCambiado,
    required TResult Function(_PasswordCambiado value) passwordCambiado,
    required TResult Function(_LoginCorreoYClavePresionado value)
        loginCorreoYClavePresionado,
  }) {
    return emailCambiado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailCambiado value)? emailCambiado,
    TResult Function(_PasswordCambiado value)? passwordCambiado,
    TResult Function(_LoginCorreoYClavePresionado value)?
        loginCorreoYClavePresionado,
    required TResult orElse(),
  }) {
    if (emailCambiado != null) {
      return emailCambiado(this);
    }
    return orElse();
  }
}

abstract class _EmailCambiado implements IniciarSesionEvent {
  const factory _EmailCambiado(String email) = _$_EmailCambiado;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailCambiadoCopyWith<_EmailCambiado> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordCambiadoCopyWith<$Res> {
  factory _$PasswordCambiadoCopyWith(
          _PasswordCambiado value, $Res Function(_PasswordCambiado) then) =
      __$PasswordCambiadoCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordCambiadoCopyWithImpl<$Res>
    extends _$IniciarSesionEventCopyWithImpl<$Res>
    implements _$PasswordCambiadoCopyWith<$Res> {
  __$PasswordCambiadoCopyWithImpl(
      _PasswordCambiado _value, $Res Function(_PasswordCambiado) _then)
      : super(_value, (v) => _then(v as _PasswordCambiado));

  @override
  _PasswordCambiado get _value => super._value as _PasswordCambiado;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_PasswordCambiado(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordCambiado implements _PasswordCambiado {
  const _$_PasswordCambiado(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'IniciarSesionEvent.passwordCambiado(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordCambiado &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$PasswordCambiadoCopyWith<_PasswordCambiado> get copyWith =>
      __$PasswordCambiadoCopyWithImpl<_PasswordCambiado>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailCambiado,
    required TResult Function(String password) passwordCambiado,
    required TResult Function() loginCorreoYClavePresionado,
  }) {
    return passwordCambiado(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailCambiado,
    TResult Function(String password)? passwordCambiado,
    TResult Function()? loginCorreoYClavePresionado,
    required TResult orElse(),
  }) {
    if (passwordCambiado != null) {
      return passwordCambiado(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailCambiado value) emailCambiado,
    required TResult Function(_PasswordCambiado value) passwordCambiado,
    required TResult Function(_LoginCorreoYClavePresionado value)
        loginCorreoYClavePresionado,
  }) {
    return passwordCambiado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailCambiado value)? emailCambiado,
    TResult Function(_PasswordCambiado value)? passwordCambiado,
    TResult Function(_LoginCorreoYClavePresionado value)?
        loginCorreoYClavePresionado,
    required TResult orElse(),
  }) {
    if (passwordCambiado != null) {
      return passwordCambiado(this);
    }
    return orElse();
  }
}

abstract class _PasswordCambiado implements IniciarSesionEvent {
  const factory _PasswordCambiado(String password) = _$_PasswordCambiado;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordCambiadoCopyWith<_PasswordCambiado> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginCorreoYClavePresionadoCopyWith<$Res> {
  factory _$LoginCorreoYClavePresionadoCopyWith(
          _LoginCorreoYClavePresionado value,
          $Res Function(_LoginCorreoYClavePresionado) then) =
      __$LoginCorreoYClavePresionadoCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginCorreoYClavePresionadoCopyWithImpl<$Res>
    extends _$IniciarSesionEventCopyWithImpl<$Res>
    implements _$LoginCorreoYClavePresionadoCopyWith<$Res> {
  __$LoginCorreoYClavePresionadoCopyWithImpl(
      _LoginCorreoYClavePresionado _value,
      $Res Function(_LoginCorreoYClavePresionado) _then)
      : super(_value, (v) => _then(v as _LoginCorreoYClavePresionado));

  @override
  _LoginCorreoYClavePresionado get _value =>
      super._value as _LoginCorreoYClavePresionado;
}

/// @nodoc

class _$_LoginCorreoYClavePresionado implements _LoginCorreoYClavePresionado {
  const _$_LoginCorreoYClavePresionado();

  @override
  String toString() {
    return 'IniciarSesionEvent.loginCorreoYClavePresionado()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginCorreoYClavePresionado);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailCambiado,
    required TResult Function(String password) passwordCambiado,
    required TResult Function() loginCorreoYClavePresionado,
  }) {
    return loginCorreoYClavePresionado();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailCambiado,
    TResult Function(String password)? passwordCambiado,
    TResult Function()? loginCorreoYClavePresionado,
    required TResult orElse(),
  }) {
    if (loginCorreoYClavePresionado != null) {
      return loginCorreoYClavePresionado();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailCambiado value) emailCambiado,
    required TResult Function(_PasswordCambiado value) passwordCambiado,
    required TResult Function(_LoginCorreoYClavePresionado value)
        loginCorreoYClavePresionado,
  }) {
    return loginCorreoYClavePresionado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailCambiado value)? emailCambiado,
    TResult Function(_PasswordCambiado value)? passwordCambiado,
    TResult Function(_LoginCorreoYClavePresionado value)?
        loginCorreoYClavePresionado,
    required TResult orElse(),
  }) {
    if (loginCorreoYClavePresionado != null) {
      return loginCorreoYClavePresionado(this);
    }
    return orElse();
  }
}

abstract class _LoginCorreoYClavePresionado implements IniciarSesionEvent {
  const factory _LoginCorreoYClavePresionado() = _$_LoginCorreoYClavePresionado;
}

/// @nodoc
class _$IniciarSesionStateTearOff {
  const _$IniciarSesionStateTearOff();

  _IniciarSesionState call(
      {required EmailAddress email,
      required Password password,
      required bool estaLogueando,
      required bool mostrarMensajesDeError,
      required Option<Either<ExcepcionAutentificacion, Unit>>
          opcionDeErrorOExitoDeLogin}) {
    return _IniciarSesionState(
      email: email,
      password: password,
      estaLogueando: estaLogueando,
      mostrarMensajesDeError: mostrarMensajesDeError,
      opcionDeErrorOExitoDeLogin: opcionDeErrorOExitoDeLogin,
    );
  }
}

/// @nodoc
const $IniciarSesionState = _$IniciarSesionStateTearOff();

/// @nodoc
mixin _$IniciarSesionState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get estaLogueando => throw _privateConstructorUsedError;
  bool get mostrarMensajesDeError => throw _privateConstructorUsedError;
  Option<Either<ExcepcionAutentificacion, Unit>>
      get opcionDeErrorOExitoDeLogin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IniciarSesionStateCopyWith<IniciarSesionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IniciarSesionStateCopyWith<$Res> {
  factory $IniciarSesionStateCopyWith(
          IniciarSesionState value, $Res Function(IniciarSesionState) then) =
      _$IniciarSesionStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Password password,
      bool estaLogueando,
      bool mostrarMensajesDeError,
      Option<Either<ExcepcionAutentificacion, Unit>>
          opcionDeErrorOExitoDeLogin});
}

/// @nodoc
class _$IniciarSesionStateCopyWithImpl<$Res>
    implements $IniciarSesionStateCopyWith<$Res> {
  _$IniciarSesionStateCopyWithImpl(this._value, this._then);

  final IniciarSesionState _value;
  // ignore: unused_field
  final $Res Function(IniciarSesionState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? estaLogueando = freezed,
    Object? mostrarMensajesDeError = freezed,
    Object? opcionDeErrorOExitoDeLogin = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      estaLogueando: estaLogueando == freezed
          ? _value.estaLogueando
          : estaLogueando // ignore: cast_nullable_to_non_nullable
              as bool,
      mostrarMensajesDeError: mostrarMensajesDeError == freezed
          ? _value.mostrarMensajesDeError
          : mostrarMensajesDeError // ignore: cast_nullable_to_non_nullable
              as bool,
      opcionDeErrorOExitoDeLogin: opcionDeErrorOExitoDeLogin == freezed
          ? _value.opcionDeErrorOExitoDeLogin
          : opcionDeErrorOExitoDeLogin // ignore: cast_nullable_to_non_nullable
              as Option<Either<ExcepcionAutentificacion, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$IniciarSesionStateCopyWith<$Res>
    implements $IniciarSesionStateCopyWith<$Res> {
  factory _$IniciarSesionStateCopyWith(
          _IniciarSesionState value, $Res Function(_IniciarSesionState) then) =
      __$IniciarSesionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Password password,
      bool estaLogueando,
      bool mostrarMensajesDeError,
      Option<Either<ExcepcionAutentificacion, Unit>>
          opcionDeErrorOExitoDeLogin});
}

/// @nodoc
class __$IniciarSesionStateCopyWithImpl<$Res>
    extends _$IniciarSesionStateCopyWithImpl<$Res>
    implements _$IniciarSesionStateCopyWith<$Res> {
  __$IniciarSesionStateCopyWithImpl(
      _IniciarSesionState _value, $Res Function(_IniciarSesionState) _then)
      : super(_value, (v) => _then(v as _IniciarSesionState));

  @override
  _IniciarSesionState get _value => super._value as _IniciarSesionState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? estaLogueando = freezed,
    Object? mostrarMensajesDeError = freezed,
    Object? opcionDeErrorOExitoDeLogin = freezed,
  }) {
    return _then(_IniciarSesionState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      estaLogueando: estaLogueando == freezed
          ? _value.estaLogueando
          : estaLogueando // ignore: cast_nullable_to_non_nullable
              as bool,
      mostrarMensajesDeError: mostrarMensajesDeError == freezed
          ? _value.mostrarMensajesDeError
          : mostrarMensajesDeError // ignore: cast_nullable_to_non_nullable
              as bool,
      opcionDeErrorOExitoDeLogin: opcionDeErrorOExitoDeLogin == freezed
          ? _value.opcionDeErrorOExitoDeLogin
          : opcionDeErrorOExitoDeLogin // ignore: cast_nullable_to_non_nullable
              as Option<Either<ExcepcionAutentificacion, Unit>>,
    ));
  }
}

/// @nodoc

class _$_IniciarSesionState implements _IniciarSesionState {
  const _$_IniciarSesionState(
      {required this.email,
      required this.password,
      required this.estaLogueando,
      required this.mostrarMensajesDeError,
      required this.opcionDeErrorOExitoDeLogin});

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final bool estaLogueando;
  @override
  final bool mostrarMensajesDeError;
  @override
  final Option<Either<ExcepcionAutentificacion, Unit>>
      opcionDeErrorOExitoDeLogin;

  @override
  String toString() {
    return 'IniciarSesionState(email: $email, password: $password, estaLogueando: $estaLogueando, mostrarMensajesDeError: $mostrarMensajesDeError, opcionDeErrorOExitoDeLogin: $opcionDeErrorOExitoDeLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IniciarSesionState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.estaLogueando, estaLogueando) ||
                const DeepCollectionEquality()
                    .equals(other.estaLogueando, estaLogueando)) &&
            (identical(other.mostrarMensajesDeError, mostrarMensajesDeError) ||
                const DeepCollectionEquality().equals(
                    other.mostrarMensajesDeError, mostrarMensajesDeError)) &&
            (identical(other.opcionDeErrorOExitoDeLogin,
                    opcionDeErrorOExitoDeLogin) ||
                const DeepCollectionEquality().equals(
                    other.opcionDeErrorOExitoDeLogin,
                    opcionDeErrorOExitoDeLogin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(estaLogueando) ^
      const DeepCollectionEquality().hash(mostrarMensajesDeError) ^
      const DeepCollectionEquality().hash(opcionDeErrorOExitoDeLogin);

  @JsonKey(ignore: true)
  @override
  _$IniciarSesionStateCopyWith<_IniciarSesionState> get copyWith =>
      __$IniciarSesionStateCopyWithImpl<_IniciarSesionState>(this, _$identity);
}

abstract class _IniciarSesionState implements IniciarSesionState {
  const factory _IniciarSesionState(
      {required EmailAddress email,
      required Password password,
      required bool estaLogueando,
      required bool mostrarMensajesDeError,
      required Option<Either<ExcepcionAutentificacion, Unit>>
          opcionDeErrorOExitoDeLogin}) = _$_IniciarSesionState;

  @override
  EmailAddress get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get estaLogueando => throw _privateConstructorUsedError;
  @override
  bool get mostrarMensajesDeError => throw _privateConstructorUsedError;
  @override
  Option<Either<ExcepcionAutentificacion, Unit>>
      get opcionDeErrorOExitoDeLogin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IniciarSesionStateCopyWith<_IniciarSesionState> get copyWith =>
      throw _privateConstructorUsedError;
}
