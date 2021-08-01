// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ver_perfil_empleado_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerPerfilEmpleadoEventTearOff {
  const _$VerPerfilEmpleadoEventTearOff();

  _VerPerfilIniciado verPerfilIniciado(Identificador uuidEmpleado) {
    return _VerPerfilIniciado(
      uuidEmpleado,
    );
  }
}

/// @nodoc
const $VerPerfilEmpleadoEvent = _$VerPerfilEmpleadoEventTearOff();

/// @nodoc
mixin _$VerPerfilEmpleadoEvent {
  Identificador get uuidEmpleado => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado) verPerfilIniciado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)? verPerfilIniciado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerPerfilIniciado value) verPerfilIniciado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerPerfilIniciado value)? verPerfilIniciado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerPerfilEmpleadoEventCopyWith<VerPerfilEmpleadoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerPerfilEmpleadoEventCopyWith<$Res> {
  factory $VerPerfilEmpleadoEventCopyWith(VerPerfilEmpleadoEvent value,
          $Res Function(VerPerfilEmpleadoEvent) then) =
      _$VerPerfilEmpleadoEventCopyWithImpl<$Res>;
  $Res call({Identificador uuidEmpleado});
}

/// @nodoc
class _$VerPerfilEmpleadoEventCopyWithImpl<$Res>
    implements $VerPerfilEmpleadoEventCopyWith<$Res> {
  _$VerPerfilEmpleadoEventCopyWithImpl(this._value, this._then);

  final VerPerfilEmpleadoEvent _value;
  // ignore: unused_field
  final $Res Function(VerPerfilEmpleadoEvent) _then;

  @override
  $Res call({
    Object? uuidEmpleado = freezed,
  }) {
    return _then(_value.copyWith(
      uuidEmpleado: uuidEmpleado == freezed
          ? _value.uuidEmpleado
          : uuidEmpleado // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc
abstract class _$VerPerfilIniciadoCopyWith<$Res>
    implements $VerPerfilEmpleadoEventCopyWith<$Res> {
  factory _$VerPerfilIniciadoCopyWith(
          _VerPerfilIniciado value, $Res Function(_VerPerfilIniciado) then) =
      __$VerPerfilIniciadoCopyWithImpl<$Res>;
  @override
  $Res call({Identificador uuidEmpleado});
}

/// @nodoc
class __$VerPerfilIniciadoCopyWithImpl<$Res>
    extends _$VerPerfilEmpleadoEventCopyWithImpl<$Res>
    implements _$VerPerfilIniciadoCopyWith<$Res> {
  __$VerPerfilIniciadoCopyWithImpl(
      _VerPerfilIniciado _value, $Res Function(_VerPerfilIniciado) _then)
      : super(_value, (v) => _then(v as _VerPerfilIniciado));

  @override
  _VerPerfilIniciado get _value => super._value as _VerPerfilIniciado;

  @override
  $Res call({
    Object? uuidEmpleado = freezed,
  }) {
    return _then(_VerPerfilIniciado(
      uuidEmpleado == freezed
          ? _value.uuidEmpleado
          : uuidEmpleado // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

class _$_VerPerfilIniciado implements _VerPerfilIniciado {
  const _$_VerPerfilIniciado(this.uuidEmpleado);

  @override
  final Identificador uuidEmpleado;

  @override
  String toString() {
    return 'VerPerfilEmpleadoEvent.verPerfilIniciado(uuidEmpleado: $uuidEmpleado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerPerfilIniciado &&
            (identical(other.uuidEmpleado, uuidEmpleado) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEmpleado, uuidEmpleado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuidEmpleado);

  @JsonKey(ignore: true)
  @override
  _$VerPerfilIniciadoCopyWith<_VerPerfilIniciado> get copyWith =>
      __$VerPerfilIniciadoCopyWithImpl<_VerPerfilIniciado>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado) verPerfilIniciado,
  }) {
    return verPerfilIniciado(uuidEmpleado);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)? verPerfilIniciado,
    required TResult orElse(),
  }) {
    if (verPerfilIniciado != null) {
      return verPerfilIniciado(uuidEmpleado);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerPerfilIniciado value) verPerfilIniciado,
  }) {
    return verPerfilIniciado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerPerfilIniciado value)? verPerfilIniciado,
    required TResult orElse(),
  }) {
    if (verPerfilIniciado != null) {
      return verPerfilIniciado(this);
    }
    return orElse();
  }
}

abstract class _VerPerfilIniciado implements VerPerfilEmpleadoEvent {
  const factory _VerPerfilIniciado(Identificador uuidEmpleado) =
      _$_VerPerfilIniciado;

  @override
  Identificador get uuidEmpleado => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerPerfilIniciadoCopyWith<_VerPerfilIniciado> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VerPerfilEmpleadoStateTearOff {
  const _$VerPerfilEmpleadoStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _CargandoPerfil cargandoPerfil() {
    return const _CargandoPerfil();
  }

  _PerfilEmpleadoCargado perfilEmpleadoCargado(Empleado perfilEmpleado) {
    return _PerfilEmpleadoCargado(
      perfilEmpleado,
    );
  }

  _CargaFallidaPerfilEmpleado cargaFallidaPerfilEmpleado(
      EmpleadoExcepcion empleadoExcepcion) {
    return _CargaFallidaPerfilEmpleado(
      empleadoExcepcion,
    );
  }
}

/// @nodoc
const $VerPerfilEmpleadoState = _$VerPerfilEmpleadoStateTearOff();

/// @nodoc
mixin _$VerPerfilEmpleadoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cargandoPerfil,
    required TResult Function(Empleado perfilEmpleado) perfilEmpleadoCargado,
    required TResult Function(EmpleadoExcepcion empleadoExcepcion)
        cargaFallidaPerfilEmpleado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cargandoPerfil,
    TResult Function(Empleado perfilEmpleado)? perfilEmpleadoCargado,
    TResult Function(EmpleadoExcepcion empleadoExcepcion)?
        cargaFallidaPerfilEmpleado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CargandoPerfil value) cargandoPerfil,
    required TResult Function(_PerfilEmpleadoCargado value)
        perfilEmpleadoCargado,
    required TResult Function(_CargaFallidaPerfilEmpleado value)
        cargaFallidaPerfilEmpleado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CargandoPerfil value)? cargandoPerfil,
    TResult Function(_PerfilEmpleadoCargado value)? perfilEmpleadoCargado,
    TResult Function(_CargaFallidaPerfilEmpleado value)?
        cargaFallidaPerfilEmpleado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerPerfilEmpleadoStateCopyWith<$Res> {
  factory $VerPerfilEmpleadoStateCopyWith(VerPerfilEmpleadoState value,
          $Res Function(VerPerfilEmpleadoState) then) =
      _$VerPerfilEmpleadoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerPerfilEmpleadoStateCopyWithImpl<$Res>
    implements $VerPerfilEmpleadoStateCopyWith<$Res> {
  _$VerPerfilEmpleadoStateCopyWithImpl(this._value, this._then);

  final VerPerfilEmpleadoState _value;
  // ignore: unused_field
  final $Res Function(VerPerfilEmpleadoState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$VerPerfilEmpleadoStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'VerPerfilEmpleadoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cargandoPerfil,
    required TResult Function(Empleado perfilEmpleado) perfilEmpleadoCargado,
    required TResult Function(EmpleadoExcepcion empleadoExcepcion)
        cargaFallidaPerfilEmpleado,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cargandoPerfil,
    TResult Function(Empleado perfilEmpleado)? perfilEmpleadoCargado,
    TResult Function(EmpleadoExcepcion empleadoExcepcion)?
        cargaFallidaPerfilEmpleado,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CargandoPerfil value) cargandoPerfil,
    required TResult Function(_PerfilEmpleadoCargado value)
        perfilEmpleadoCargado,
    required TResult Function(_CargaFallidaPerfilEmpleado value)
        cargaFallidaPerfilEmpleado,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CargandoPerfil value)? cargandoPerfil,
    TResult Function(_PerfilEmpleadoCargado value)? perfilEmpleadoCargado,
    TResult Function(_CargaFallidaPerfilEmpleado value)?
        cargaFallidaPerfilEmpleado,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VerPerfilEmpleadoState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$CargandoPerfilCopyWith<$Res> {
  factory _$CargandoPerfilCopyWith(
          _CargandoPerfil value, $Res Function(_CargandoPerfil) then) =
      __$CargandoPerfilCopyWithImpl<$Res>;
}

/// @nodoc
class __$CargandoPerfilCopyWithImpl<$Res>
    extends _$VerPerfilEmpleadoStateCopyWithImpl<$Res>
    implements _$CargandoPerfilCopyWith<$Res> {
  __$CargandoPerfilCopyWithImpl(
      _CargandoPerfil _value, $Res Function(_CargandoPerfil) _then)
      : super(_value, (v) => _then(v as _CargandoPerfil));

  @override
  _CargandoPerfil get _value => super._value as _CargandoPerfil;
}

/// @nodoc

class _$_CargandoPerfil implements _CargandoPerfil {
  const _$_CargandoPerfil();

  @override
  String toString() {
    return 'VerPerfilEmpleadoState.cargandoPerfil()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CargandoPerfil);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cargandoPerfil,
    required TResult Function(Empleado perfilEmpleado) perfilEmpleadoCargado,
    required TResult Function(EmpleadoExcepcion empleadoExcepcion)
        cargaFallidaPerfilEmpleado,
  }) {
    return cargandoPerfil();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cargandoPerfil,
    TResult Function(Empleado perfilEmpleado)? perfilEmpleadoCargado,
    TResult Function(EmpleadoExcepcion empleadoExcepcion)?
        cargaFallidaPerfilEmpleado,
    required TResult orElse(),
  }) {
    if (cargandoPerfil != null) {
      return cargandoPerfil();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CargandoPerfil value) cargandoPerfil,
    required TResult Function(_PerfilEmpleadoCargado value)
        perfilEmpleadoCargado,
    required TResult Function(_CargaFallidaPerfilEmpleado value)
        cargaFallidaPerfilEmpleado,
  }) {
    return cargandoPerfil(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CargandoPerfil value)? cargandoPerfil,
    TResult Function(_PerfilEmpleadoCargado value)? perfilEmpleadoCargado,
    TResult Function(_CargaFallidaPerfilEmpleado value)?
        cargaFallidaPerfilEmpleado,
    required TResult orElse(),
  }) {
    if (cargandoPerfil != null) {
      return cargandoPerfil(this);
    }
    return orElse();
  }
}

abstract class _CargandoPerfil implements VerPerfilEmpleadoState {
  const factory _CargandoPerfil() = _$_CargandoPerfil;
}

/// @nodoc
abstract class _$PerfilEmpleadoCargadoCopyWith<$Res> {
  factory _$PerfilEmpleadoCargadoCopyWith(_PerfilEmpleadoCargado value,
          $Res Function(_PerfilEmpleadoCargado) then) =
      __$PerfilEmpleadoCargadoCopyWithImpl<$Res>;
  $Res call({Empleado perfilEmpleado});

  $EmpleadoCopyWith<$Res> get perfilEmpleado;
}

/// @nodoc
class __$PerfilEmpleadoCargadoCopyWithImpl<$Res>
    extends _$VerPerfilEmpleadoStateCopyWithImpl<$Res>
    implements _$PerfilEmpleadoCargadoCopyWith<$Res> {
  __$PerfilEmpleadoCargadoCopyWithImpl(_PerfilEmpleadoCargado _value,
      $Res Function(_PerfilEmpleadoCargado) _then)
      : super(_value, (v) => _then(v as _PerfilEmpleadoCargado));

  @override
  _PerfilEmpleadoCargado get _value => super._value as _PerfilEmpleadoCargado;

  @override
  $Res call({
    Object? perfilEmpleado = freezed,
  }) {
    return _then(_PerfilEmpleadoCargado(
      perfilEmpleado == freezed
          ? _value.perfilEmpleado
          : perfilEmpleado // ignore: cast_nullable_to_non_nullable
              as Empleado,
    ));
  }

  @override
  $EmpleadoCopyWith<$Res> get perfilEmpleado {
    return $EmpleadoCopyWith<$Res>(_value.perfilEmpleado, (value) {
      return _then(_value.copyWith(perfilEmpleado: value));
    });
  }
}

/// @nodoc

class _$_PerfilEmpleadoCargado implements _PerfilEmpleadoCargado {
  const _$_PerfilEmpleadoCargado(this.perfilEmpleado);

  @override
  final Empleado perfilEmpleado;

  @override
  String toString() {
    return 'VerPerfilEmpleadoState.perfilEmpleadoCargado(perfilEmpleado: $perfilEmpleado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PerfilEmpleadoCargado &&
            (identical(other.perfilEmpleado, perfilEmpleado) ||
                const DeepCollectionEquality()
                    .equals(other.perfilEmpleado, perfilEmpleado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(perfilEmpleado);

  @JsonKey(ignore: true)
  @override
  _$PerfilEmpleadoCargadoCopyWith<_PerfilEmpleadoCargado> get copyWith =>
      __$PerfilEmpleadoCargadoCopyWithImpl<_PerfilEmpleadoCargado>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cargandoPerfil,
    required TResult Function(Empleado perfilEmpleado) perfilEmpleadoCargado,
    required TResult Function(EmpleadoExcepcion empleadoExcepcion)
        cargaFallidaPerfilEmpleado,
  }) {
    return perfilEmpleadoCargado(perfilEmpleado);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cargandoPerfil,
    TResult Function(Empleado perfilEmpleado)? perfilEmpleadoCargado,
    TResult Function(EmpleadoExcepcion empleadoExcepcion)?
        cargaFallidaPerfilEmpleado,
    required TResult orElse(),
  }) {
    if (perfilEmpleadoCargado != null) {
      return perfilEmpleadoCargado(perfilEmpleado);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CargandoPerfil value) cargandoPerfil,
    required TResult Function(_PerfilEmpleadoCargado value)
        perfilEmpleadoCargado,
    required TResult Function(_CargaFallidaPerfilEmpleado value)
        cargaFallidaPerfilEmpleado,
  }) {
    return perfilEmpleadoCargado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CargandoPerfil value)? cargandoPerfil,
    TResult Function(_PerfilEmpleadoCargado value)? perfilEmpleadoCargado,
    TResult Function(_CargaFallidaPerfilEmpleado value)?
        cargaFallidaPerfilEmpleado,
    required TResult orElse(),
  }) {
    if (perfilEmpleadoCargado != null) {
      return perfilEmpleadoCargado(this);
    }
    return orElse();
  }
}

abstract class _PerfilEmpleadoCargado implements VerPerfilEmpleadoState {
  const factory _PerfilEmpleadoCargado(Empleado perfilEmpleado) =
      _$_PerfilEmpleadoCargado;

  Empleado get perfilEmpleado => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PerfilEmpleadoCargadoCopyWith<_PerfilEmpleadoCargado> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CargaFallidaPerfilEmpleadoCopyWith<$Res> {
  factory _$CargaFallidaPerfilEmpleadoCopyWith(
          _CargaFallidaPerfilEmpleado value,
          $Res Function(_CargaFallidaPerfilEmpleado) then) =
      __$CargaFallidaPerfilEmpleadoCopyWithImpl<$Res>;
  $Res call({EmpleadoExcepcion empleadoExcepcion});

  $EmpleadoExcepcionCopyWith<$Res> get empleadoExcepcion;
}

/// @nodoc
class __$CargaFallidaPerfilEmpleadoCopyWithImpl<$Res>
    extends _$VerPerfilEmpleadoStateCopyWithImpl<$Res>
    implements _$CargaFallidaPerfilEmpleadoCopyWith<$Res> {
  __$CargaFallidaPerfilEmpleadoCopyWithImpl(_CargaFallidaPerfilEmpleado _value,
      $Res Function(_CargaFallidaPerfilEmpleado) _then)
      : super(_value, (v) => _then(v as _CargaFallidaPerfilEmpleado));

  @override
  _CargaFallidaPerfilEmpleado get _value =>
      super._value as _CargaFallidaPerfilEmpleado;

  @override
  $Res call({
    Object? empleadoExcepcion = freezed,
  }) {
    return _then(_CargaFallidaPerfilEmpleado(
      empleadoExcepcion == freezed
          ? _value.empleadoExcepcion
          : empleadoExcepcion // ignore: cast_nullable_to_non_nullable
              as EmpleadoExcepcion,
    ));
  }

  @override
  $EmpleadoExcepcionCopyWith<$Res> get empleadoExcepcion {
    return $EmpleadoExcepcionCopyWith<$Res>(_value.empleadoExcepcion, (value) {
      return _then(_value.copyWith(empleadoExcepcion: value));
    });
  }
}

/// @nodoc

class _$_CargaFallidaPerfilEmpleado implements _CargaFallidaPerfilEmpleado {
  const _$_CargaFallidaPerfilEmpleado(this.empleadoExcepcion);

  @override
  final EmpleadoExcepcion empleadoExcepcion;

  @override
  String toString() {
    return 'VerPerfilEmpleadoState.cargaFallidaPerfilEmpleado(empleadoExcepcion: $empleadoExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CargaFallidaPerfilEmpleado &&
            (identical(other.empleadoExcepcion, empleadoExcepcion) ||
                const DeepCollectionEquality()
                    .equals(other.empleadoExcepcion, empleadoExcepcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(empleadoExcepcion);

  @JsonKey(ignore: true)
  @override
  _$CargaFallidaPerfilEmpleadoCopyWith<_CargaFallidaPerfilEmpleado>
      get copyWith => __$CargaFallidaPerfilEmpleadoCopyWithImpl<
          _CargaFallidaPerfilEmpleado>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cargandoPerfil,
    required TResult Function(Empleado perfilEmpleado) perfilEmpleadoCargado,
    required TResult Function(EmpleadoExcepcion empleadoExcepcion)
        cargaFallidaPerfilEmpleado,
  }) {
    return cargaFallidaPerfilEmpleado(empleadoExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cargandoPerfil,
    TResult Function(Empleado perfilEmpleado)? perfilEmpleadoCargado,
    TResult Function(EmpleadoExcepcion empleadoExcepcion)?
        cargaFallidaPerfilEmpleado,
    required TResult orElse(),
  }) {
    if (cargaFallidaPerfilEmpleado != null) {
      return cargaFallidaPerfilEmpleado(empleadoExcepcion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CargandoPerfil value) cargandoPerfil,
    required TResult Function(_PerfilEmpleadoCargado value)
        perfilEmpleadoCargado,
    required TResult Function(_CargaFallidaPerfilEmpleado value)
        cargaFallidaPerfilEmpleado,
  }) {
    return cargaFallidaPerfilEmpleado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CargandoPerfil value)? cargandoPerfil,
    TResult Function(_PerfilEmpleadoCargado value)? perfilEmpleadoCargado,
    TResult Function(_CargaFallidaPerfilEmpleado value)?
        cargaFallidaPerfilEmpleado,
    required TResult orElse(),
  }) {
    if (cargaFallidaPerfilEmpleado != null) {
      return cargaFallidaPerfilEmpleado(this);
    }
    return orElse();
  }
}

abstract class _CargaFallidaPerfilEmpleado implements VerPerfilEmpleadoState {
  const factory _CargaFallidaPerfilEmpleado(
      EmpleadoExcepcion empleadoExcepcion) = _$_CargaFallidaPerfilEmpleado;

  EmpleadoExcepcion get empleadoExcepcion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CargaFallidaPerfilEmpleadoCopyWith<_CargaFallidaPerfilEmpleado>
      get copyWith => throw _privateConstructorUsedError;
}
