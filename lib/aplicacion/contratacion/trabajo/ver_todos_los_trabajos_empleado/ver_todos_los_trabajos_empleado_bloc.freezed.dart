// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ver_todos_los_trabajos_empleado_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerTodosLosTrabajosEmpleadoEventTearOff {
  const _$VerTodosLosTrabajosEmpleadoEventTearOff();

  _VerTodosLosTrabajosEmpezado verTodosLosTrabajosEmpezado(
      Identificador uuidEmpleado) {
    return _VerTodosLosTrabajosEmpezado(
      uuidEmpleado,
    );
  }

  _TrabajosRecibidos trabajosRecibidos(
      Either<ContratacionExcepcion, List<Trabajo>> trabajosOExcepciones) {
    return _TrabajosRecibidos(
      trabajosOExcepciones,
    );
  }
}

/// @nodoc
const $VerTodosLosTrabajosEmpleadoEvent =
    _$VerTodosLosTrabajosEmpleadoEventTearOff();

/// @nodoc
mixin _$VerTodosLosTrabajosEmpleadoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodosLosTrabajosEmpezado,
    required TResult Function(
            Either<ContratacionExcepcion, List<Trabajo>> trabajosOExcepciones)
        trabajosRecibidos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)? verTodosLosTrabajosEmpezado,
    TResult Function(
            Either<ContratacionExcepcion, List<Trabajo>> trabajosOExcepciones)?
        trabajosRecibidos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodosLosTrabajosEmpezado value)
        verTodosLosTrabajosEmpezado,
    required TResult Function(_TrabajosRecibidos value) trabajosRecibidos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodosLosTrabajosEmpezado value)?
        verTodosLosTrabajosEmpezado,
    TResult Function(_TrabajosRecibidos value)? trabajosRecibidos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerTodosLosTrabajosEmpleadoEventCopyWith<$Res> {
  factory $VerTodosLosTrabajosEmpleadoEventCopyWith(
          VerTodosLosTrabajosEmpleadoEvent value,
          $Res Function(VerTodosLosTrabajosEmpleadoEvent) then) =
      _$VerTodosLosTrabajosEmpleadoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerTodosLosTrabajosEmpleadoEventCopyWithImpl<$Res>
    implements $VerTodosLosTrabajosEmpleadoEventCopyWith<$Res> {
  _$VerTodosLosTrabajosEmpleadoEventCopyWithImpl(this._value, this._then);

  final VerTodosLosTrabajosEmpleadoEvent _value;
  // ignore: unused_field
  final $Res Function(VerTodosLosTrabajosEmpleadoEvent) _then;
}

/// @nodoc
abstract class _$VerTodosLosTrabajosEmpezadoCopyWith<$Res> {
  factory _$VerTodosLosTrabajosEmpezadoCopyWith(
          _VerTodosLosTrabajosEmpezado value,
          $Res Function(_VerTodosLosTrabajosEmpezado) then) =
      __$VerTodosLosTrabajosEmpezadoCopyWithImpl<$Res>;
  $Res call({Identificador uuidEmpleado});
}

/// @nodoc
class __$VerTodosLosTrabajosEmpezadoCopyWithImpl<$Res>
    extends _$VerTodosLosTrabajosEmpleadoEventCopyWithImpl<$Res>
    implements _$VerTodosLosTrabajosEmpezadoCopyWith<$Res> {
  __$VerTodosLosTrabajosEmpezadoCopyWithImpl(
      _VerTodosLosTrabajosEmpezado _value,
      $Res Function(_VerTodosLosTrabajosEmpezado) _then)
      : super(_value, (v) => _then(v as _VerTodosLosTrabajosEmpezado));

  @override
  _VerTodosLosTrabajosEmpezado get _value =>
      super._value as _VerTodosLosTrabajosEmpezado;

  @override
  $Res call({
    Object? uuidEmpleado = freezed,
  }) {
    return _then(_VerTodosLosTrabajosEmpezado(
      uuidEmpleado == freezed
          ? _value.uuidEmpleado
          : uuidEmpleado // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

class _$_VerTodosLosTrabajosEmpezado implements _VerTodosLosTrabajosEmpezado {
  const _$_VerTodosLosTrabajosEmpezado(this.uuidEmpleado);

  @override
  final Identificador uuidEmpleado;

  @override
  String toString() {
    return 'VerTodosLosTrabajosEmpleadoEvent.verTodosLosTrabajosEmpezado(uuidEmpleado: $uuidEmpleado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerTodosLosTrabajosEmpezado &&
            (identical(other.uuidEmpleado, uuidEmpleado) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEmpleado, uuidEmpleado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuidEmpleado);

  @JsonKey(ignore: true)
  @override
  _$VerTodosLosTrabajosEmpezadoCopyWith<_VerTodosLosTrabajosEmpezado>
      get copyWith => __$VerTodosLosTrabajosEmpezadoCopyWithImpl<
          _VerTodosLosTrabajosEmpezado>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodosLosTrabajosEmpezado,
    required TResult Function(
            Either<ContratacionExcepcion, List<Trabajo>> trabajosOExcepciones)
        trabajosRecibidos,
  }) {
    return verTodosLosTrabajosEmpezado(uuidEmpleado);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)? verTodosLosTrabajosEmpezado,
    TResult Function(
            Either<ContratacionExcepcion, List<Trabajo>> trabajosOExcepciones)?
        trabajosRecibidos,
    required TResult orElse(),
  }) {
    if (verTodosLosTrabajosEmpezado != null) {
      return verTodosLosTrabajosEmpezado(uuidEmpleado);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodosLosTrabajosEmpezado value)
        verTodosLosTrabajosEmpezado,
    required TResult Function(_TrabajosRecibidos value) trabajosRecibidos,
  }) {
    return verTodosLosTrabajosEmpezado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodosLosTrabajosEmpezado value)?
        verTodosLosTrabajosEmpezado,
    TResult Function(_TrabajosRecibidos value)? trabajosRecibidos,
    required TResult orElse(),
  }) {
    if (verTodosLosTrabajosEmpezado != null) {
      return verTodosLosTrabajosEmpezado(this);
    }
    return orElse();
  }
}

abstract class _VerTodosLosTrabajosEmpezado
    implements VerTodosLosTrabajosEmpleadoEvent {
  const factory _VerTodosLosTrabajosEmpezado(Identificador uuidEmpleado) =
      _$_VerTodosLosTrabajosEmpezado;

  Identificador get uuidEmpleado => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerTodosLosTrabajosEmpezadoCopyWith<_VerTodosLosTrabajosEmpezado>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TrabajosRecibidosCopyWith<$Res> {
  factory _$TrabajosRecibidosCopyWith(
          _TrabajosRecibidos value, $Res Function(_TrabajosRecibidos) then) =
      __$TrabajosRecibidosCopyWithImpl<$Res>;
  $Res call(
      {Either<ContratacionExcepcion, List<Trabajo>> trabajosOExcepciones});
}

/// @nodoc
class __$TrabajosRecibidosCopyWithImpl<$Res>
    extends _$VerTodosLosTrabajosEmpleadoEventCopyWithImpl<$Res>
    implements _$TrabajosRecibidosCopyWith<$Res> {
  __$TrabajosRecibidosCopyWithImpl(
      _TrabajosRecibidos _value, $Res Function(_TrabajosRecibidos) _then)
      : super(_value, (v) => _then(v as _TrabajosRecibidos));

  @override
  _TrabajosRecibidos get _value => super._value as _TrabajosRecibidos;

  @override
  $Res call({
    Object? trabajosOExcepciones = freezed,
  }) {
    return _then(_TrabajosRecibidos(
      trabajosOExcepciones == freezed
          ? _value.trabajosOExcepciones
          : trabajosOExcepciones // ignore: cast_nullable_to_non_nullable
              as Either<ContratacionExcepcion, List<Trabajo>>,
    ));
  }
}

/// @nodoc

class _$_TrabajosRecibidos implements _TrabajosRecibidos {
  const _$_TrabajosRecibidos(this.trabajosOExcepciones);

  @override
  final Either<ContratacionExcepcion, List<Trabajo>> trabajosOExcepciones;

  @override
  String toString() {
    return 'VerTodosLosTrabajosEmpleadoEvent.trabajosRecibidos(trabajosOExcepciones: $trabajosOExcepciones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrabajosRecibidos &&
            (identical(other.trabajosOExcepciones, trabajosOExcepciones) ||
                const DeepCollectionEquality()
                    .equals(other.trabajosOExcepciones, trabajosOExcepciones)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trabajosOExcepciones);

  @JsonKey(ignore: true)
  @override
  _$TrabajosRecibidosCopyWith<_TrabajosRecibidos> get copyWith =>
      __$TrabajosRecibidosCopyWithImpl<_TrabajosRecibidos>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodosLosTrabajosEmpezado,
    required TResult Function(
            Either<ContratacionExcepcion, List<Trabajo>> trabajosOExcepciones)
        trabajosRecibidos,
  }) {
    return trabajosRecibidos(trabajosOExcepciones);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)? verTodosLosTrabajosEmpezado,
    TResult Function(
            Either<ContratacionExcepcion, List<Trabajo>> trabajosOExcepciones)?
        trabajosRecibidos,
    required TResult orElse(),
  }) {
    if (trabajosRecibidos != null) {
      return trabajosRecibidos(trabajosOExcepciones);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodosLosTrabajosEmpezado value)
        verTodosLosTrabajosEmpezado,
    required TResult Function(_TrabajosRecibidos value) trabajosRecibidos,
  }) {
    return trabajosRecibidos(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodosLosTrabajosEmpezado value)?
        verTodosLosTrabajosEmpezado,
    TResult Function(_TrabajosRecibidos value)? trabajosRecibidos,
    required TResult orElse(),
  }) {
    if (trabajosRecibidos != null) {
      return trabajosRecibidos(this);
    }
    return orElse();
  }
}

abstract class _TrabajosRecibidos implements VerTodosLosTrabajosEmpleadoEvent {
  const factory _TrabajosRecibidos(
          Either<ContratacionExcepcion, List<Trabajo>> trabajosOExcepciones) =
      _$_TrabajosRecibidos;

  Either<ContratacionExcepcion, List<Trabajo>> get trabajosOExcepciones =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TrabajosRecibidosCopyWith<_TrabajosRecibidos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VerTodosLosTrabajosEmpleadoStateTearOff {
  const _$VerTodosLosTrabajosEmpleadoStateTearOff();

  _Inicial inicial() {
    return const _Inicial();
  }

  _CargaEnProgreso cargaEnProgreso() {
    return const _CargaEnProgreso();
  }

  _CargaExitosa cargaExitosa(List<Trabajo> trabajosEmpleado) {
    return _CargaExitosa(
      trabajosEmpleado,
    );
  }

  _CargaFallida cargaFallida(ContratacionExcepcion trabajosExcepcion) {
    return _CargaFallida(
      trabajosExcepcion,
    );
  }
}

/// @nodoc
const $VerTodosLosTrabajosEmpleadoState =
    _$VerTodosLosTrabajosEmpleadoStateTearOff();

/// @nodoc
mixin _$VerTodosLosTrabajosEmpleadoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<Trabajo> trabajosEmpleado) cargaExitosa,
    required TResult Function(ContratacionExcepcion trabajosExcepcion)
        cargaFallida,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<Trabajo> trabajosEmpleado)? cargaExitosa,
    TResult Function(ContratacionExcepcion trabajosExcepcion)? cargaFallida,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_CargaEnProgreso value) cargaEnProgreso,
    required TResult Function(_CargaExitosa value) cargaExitosa,
    required TResult Function(_CargaFallida value) cargaFallida,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_CargaEnProgreso value)? cargaEnProgreso,
    TResult Function(_CargaExitosa value)? cargaExitosa,
    TResult Function(_CargaFallida value)? cargaFallida,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerTodosLosTrabajosEmpleadoStateCopyWith<$Res> {
  factory $VerTodosLosTrabajosEmpleadoStateCopyWith(
          VerTodosLosTrabajosEmpleadoState value,
          $Res Function(VerTodosLosTrabajosEmpleadoState) then) =
      _$VerTodosLosTrabajosEmpleadoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerTodosLosTrabajosEmpleadoStateCopyWithImpl<$Res>
    implements $VerTodosLosTrabajosEmpleadoStateCopyWith<$Res> {
  _$VerTodosLosTrabajosEmpleadoStateCopyWithImpl(this._value, this._then);

  final VerTodosLosTrabajosEmpleadoState _value;
  // ignore: unused_field
  final $Res Function(VerTodosLosTrabajosEmpleadoState) _then;
}

/// @nodoc
abstract class _$InicialCopyWith<$Res> {
  factory _$InicialCopyWith(_Inicial value, $Res Function(_Inicial) then) =
      __$InicialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InicialCopyWithImpl<$Res>
    extends _$VerTodosLosTrabajosEmpleadoStateCopyWithImpl<$Res>
    implements _$InicialCopyWith<$Res> {
  __$InicialCopyWithImpl(_Inicial _value, $Res Function(_Inicial) _then)
      : super(_value, (v) => _then(v as _Inicial));

  @override
  _Inicial get _value => super._value as _Inicial;
}

/// @nodoc

class _$_Inicial implements _Inicial {
  const _$_Inicial();

  @override
  String toString() {
    return 'VerTodosLosTrabajosEmpleadoState.inicial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Inicial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<Trabajo> trabajosEmpleado) cargaExitosa,
    required TResult Function(ContratacionExcepcion trabajosExcepcion)
        cargaFallida,
  }) {
    return inicial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<Trabajo> trabajosEmpleado)? cargaExitosa,
    TResult Function(ContratacionExcepcion trabajosExcepcion)? cargaFallida,
    required TResult orElse(),
  }) {
    if (inicial != null) {
      return inicial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_CargaEnProgreso value) cargaEnProgreso,
    required TResult Function(_CargaExitosa value) cargaExitosa,
    required TResult Function(_CargaFallida value) cargaFallida,
  }) {
    return inicial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_CargaEnProgreso value)? cargaEnProgreso,
    TResult Function(_CargaExitosa value)? cargaExitosa,
    TResult Function(_CargaFallida value)? cargaFallida,
    required TResult orElse(),
  }) {
    if (inicial != null) {
      return inicial(this);
    }
    return orElse();
  }
}

abstract class _Inicial implements VerTodosLosTrabajosEmpleadoState {
  const factory _Inicial() = _$_Inicial;
}

/// @nodoc
abstract class _$CargaEnProgresoCopyWith<$Res> {
  factory _$CargaEnProgresoCopyWith(
          _CargaEnProgreso value, $Res Function(_CargaEnProgreso) then) =
      __$CargaEnProgresoCopyWithImpl<$Res>;
}

/// @nodoc
class __$CargaEnProgresoCopyWithImpl<$Res>
    extends _$VerTodosLosTrabajosEmpleadoStateCopyWithImpl<$Res>
    implements _$CargaEnProgresoCopyWith<$Res> {
  __$CargaEnProgresoCopyWithImpl(
      _CargaEnProgreso _value, $Res Function(_CargaEnProgreso) _then)
      : super(_value, (v) => _then(v as _CargaEnProgreso));

  @override
  _CargaEnProgreso get _value => super._value as _CargaEnProgreso;
}

/// @nodoc

class _$_CargaEnProgreso implements _CargaEnProgreso {
  const _$_CargaEnProgreso();

  @override
  String toString() {
    return 'VerTodosLosTrabajosEmpleadoState.cargaEnProgreso()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CargaEnProgreso);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<Trabajo> trabajosEmpleado) cargaExitosa,
    required TResult Function(ContratacionExcepcion trabajosExcepcion)
        cargaFallida,
  }) {
    return cargaEnProgreso();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<Trabajo> trabajosEmpleado)? cargaExitosa,
    TResult Function(ContratacionExcepcion trabajosExcepcion)? cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaEnProgreso != null) {
      return cargaEnProgreso();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_CargaEnProgreso value) cargaEnProgreso,
    required TResult Function(_CargaExitosa value) cargaExitosa,
    required TResult Function(_CargaFallida value) cargaFallida,
  }) {
    return cargaEnProgreso(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_CargaEnProgreso value)? cargaEnProgreso,
    TResult Function(_CargaExitosa value)? cargaExitosa,
    TResult Function(_CargaFallida value)? cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaEnProgreso != null) {
      return cargaEnProgreso(this);
    }
    return orElse();
  }
}

abstract class _CargaEnProgreso implements VerTodosLosTrabajosEmpleadoState {
  const factory _CargaEnProgreso() = _$_CargaEnProgreso;
}

/// @nodoc
abstract class _$CargaExitosaCopyWith<$Res> {
  factory _$CargaExitosaCopyWith(
          _CargaExitosa value, $Res Function(_CargaExitosa) then) =
      __$CargaExitosaCopyWithImpl<$Res>;
  $Res call({List<Trabajo> trabajosEmpleado});
}

/// @nodoc
class __$CargaExitosaCopyWithImpl<$Res>
    extends _$VerTodosLosTrabajosEmpleadoStateCopyWithImpl<$Res>
    implements _$CargaExitosaCopyWith<$Res> {
  __$CargaExitosaCopyWithImpl(
      _CargaExitosa _value, $Res Function(_CargaExitosa) _then)
      : super(_value, (v) => _then(v as _CargaExitosa));

  @override
  _CargaExitosa get _value => super._value as _CargaExitosa;

  @override
  $Res call({
    Object? trabajosEmpleado = freezed,
  }) {
    return _then(_CargaExitosa(
      trabajosEmpleado == freezed
          ? _value.trabajosEmpleado
          : trabajosEmpleado // ignore: cast_nullable_to_non_nullable
              as List<Trabajo>,
    ));
  }
}

/// @nodoc

class _$_CargaExitosa implements _CargaExitosa {
  const _$_CargaExitosa(this.trabajosEmpleado);

  @override
  final List<Trabajo> trabajosEmpleado;

  @override
  String toString() {
    return 'VerTodosLosTrabajosEmpleadoState.cargaExitosa(trabajosEmpleado: $trabajosEmpleado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CargaExitosa &&
            (identical(other.trabajosEmpleado, trabajosEmpleado) ||
                const DeepCollectionEquality()
                    .equals(other.trabajosEmpleado, trabajosEmpleado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trabajosEmpleado);

  @JsonKey(ignore: true)
  @override
  _$CargaExitosaCopyWith<_CargaExitosa> get copyWith =>
      __$CargaExitosaCopyWithImpl<_CargaExitosa>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<Trabajo> trabajosEmpleado) cargaExitosa,
    required TResult Function(ContratacionExcepcion trabajosExcepcion)
        cargaFallida,
  }) {
    return cargaExitosa(trabajosEmpleado);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<Trabajo> trabajosEmpleado)? cargaExitosa,
    TResult Function(ContratacionExcepcion trabajosExcepcion)? cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaExitosa != null) {
      return cargaExitosa(trabajosEmpleado);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_CargaEnProgreso value) cargaEnProgreso,
    required TResult Function(_CargaExitosa value) cargaExitosa,
    required TResult Function(_CargaFallida value) cargaFallida,
  }) {
    return cargaExitosa(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_CargaEnProgreso value)? cargaEnProgreso,
    TResult Function(_CargaExitosa value)? cargaExitosa,
    TResult Function(_CargaFallida value)? cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaExitosa != null) {
      return cargaExitosa(this);
    }
    return orElse();
  }
}

abstract class _CargaExitosa implements VerTodosLosTrabajosEmpleadoState {
  const factory _CargaExitosa(List<Trabajo> trabajosEmpleado) = _$_CargaExitosa;

  List<Trabajo> get trabajosEmpleado => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CargaExitosaCopyWith<_CargaExitosa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CargaFallidaCopyWith<$Res> {
  factory _$CargaFallidaCopyWith(
          _CargaFallida value, $Res Function(_CargaFallida) then) =
      __$CargaFallidaCopyWithImpl<$Res>;
  $Res call({ContratacionExcepcion trabajosExcepcion});

  $ContratacionExcepcionCopyWith<$Res> get trabajosExcepcion;
}

/// @nodoc
class __$CargaFallidaCopyWithImpl<$Res>
    extends _$VerTodosLosTrabajosEmpleadoStateCopyWithImpl<$Res>
    implements _$CargaFallidaCopyWith<$Res> {
  __$CargaFallidaCopyWithImpl(
      _CargaFallida _value, $Res Function(_CargaFallida) _then)
      : super(_value, (v) => _then(v as _CargaFallida));

  @override
  _CargaFallida get _value => super._value as _CargaFallida;

  @override
  $Res call({
    Object? trabajosExcepcion = freezed,
  }) {
    return _then(_CargaFallida(
      trabajosExcepcion == freezed
          ? _value.trabajosExcepcion
          : trabajosExcepcion // ignore: cast_nullable_to_non_nullable
              as ContratacionExcepcion,
    ));
  }

  @override
  $ContratacionExcepcionCopyWith<$Res> get trabajosExcepcion {
    return $ContratacionExcepcionCopyWith<$Res>(_value.trabajosExcepcion,
        (value) {
      return _then(_value.copyWith(trabajosExcepcion: value));
    });
  }
}

/// @nodoc

class _$_CargaFallida implements _CargaFallida {
  const _$_CargaFallida(this.trabajosExcepcion);

  @override
  final ContratacionExcepcion trabajosExcepcion;

  @override
  String toString() {
    return 'VerTodosLosTrabajosEmpleadoState.cargaFallida(trabajosExcepcion: $trabajosExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CargaFallida &&
            (identical(other.trabajosExcepcion, trabajosExcepcion) ||
                const DeepCollectionEquality()
                    .equals(other.trabajosExcepcion, trabajosExcepcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trabajosExcepcion);

  @JsonKey(ignore: true)
  @override
  _$CargaFallidaCopyWith<_CargaFallida> get copyWith =>
      __$CargaFallidaCopyWithImpl<_CargaFallida>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<Trabajo> trabajosEmpleado) cargaExitosa,
    required TResult Function(ContratacionExcepcion trabajosExcepcion)
        cargaFallida,
  }) {
    return cargaFallida(trabajosExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<Trabajo> trabajosEmpleado)? cargaExitosa,
    TResult Function(ContratacionExcepcion trabajosExcepcion)? cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaFallida != null) {
      return cargaFallida(trabajosExcepcion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_CargaEnProgreso value) cargaEnProgreso,
    required TResult Function(_CargaExitosa value) cargaExitosa,
    required TResult Function(_CargaFallida value) cargaFallida,
  }) {
    return cargaFallida(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_CargaEnProgreso value)? cargaEnProgreso,
    TResult Function(_CargaExitosa value)? cargaExitosa,
    TResult Function(_CargaFallida value)? cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaFallida != null) {
      return cargaFallida(this);
    }
    return orElse();
  }
}

abstract class _CargaFallida implements VerTodosLosTrabajosEmpleadoState {
  const factory _CargaFallida(ContratacionExcepcion trabajosExcepcion) =
      _$_CargaFallida;

  ContratacionExcepcion get trabajosExcepcion =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CargaFallidaCopyWith<_CargaFallida> get copyWith =>
      throw _privateConstructorUsedError;
}
