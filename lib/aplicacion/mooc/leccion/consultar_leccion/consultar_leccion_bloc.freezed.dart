// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'consultar_leccion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConsultarLeccionEventTearOff {
  const _$ConsultarLeccionEventTearOff();

  _VerDetalleLeccionEmpezado verDetalleLeccionEmpezado(
      Identificador uuidCurso, Identificador uuidLeccion) {
    return _VerDetalleLeccionEmpezado(
      uuidCurso,
      uuidLeccion,
    );
  }
}

/// @nodoc
const $ConsultarLeccionEvent = _$ConsultarLeccionEventTearOff();

/// @nodoc
mixin _$ConsultarLeccionEvent {
  Identificador get uuidCurso => throw _privateConstructorUsedError;
  Identificador get uuidLeccion => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identificador uuidCurso, Identificador uuidLeccion)
        verDetalleLeccionEmpezado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidCurso, Identificador uuidLeccion)?
        verDetalleLeccionEmpezado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerDetalleLeccionEmpezado value)
        verDetalleLeccionEmpezado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerDetalleLeccionEmpezado value)?
        verDetalleLeccionEmpezado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConsultarLeccionEventCopyWith<ConsultarLeccionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultarLeccionEventCopyWith<$Res> {
  factory $ConsultarLeccionEventCopyWith(ConsultarLeccionEvent value,
          $Res Function(ConsultarLeccionEvent) then) =
      _$ConsultarLeccionEventCopyWithImpl<$Res>;
  $Res call({Identificador uuidCurso, Identificador uuidLeccion});
}

/// @nodoc
class _$ConsultarLeccionEventCopyWithImpl<$Res>
    implements $ConsultarLeccionEventCopyWith<$Res> {
  _$ConsultarLeccionEventCopyWithImpl(this._value, this._then);

  final ConsultarLeccionEvent _value;
  // ignore: unused_field
  final $Res Function(ConsultarLeccionEvent) _then;

  @override
  $Res call({
    Object? uuidCurso = freezed,
    Object? uuidLeccion = freezed,
  }) {
    return _then(_value.copyWith(
      uuidCurso: uuidCurso == freezed
          ? _value.uuidCurso
          : uuidCurso // ignore: cast_nullable_to_non_nullable
              as Identificador,
      uuidLeccion: uuidLeccion == freezed
          ? _value.uuidLeccion
          : uuidLeccion // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc
abstract class _$VerDetalleLeccionEmpezadoCopyWith<$Res>
    implements $ConsultarLeccionEventCopyWith<$Res> {
  factory _$VerDetalleLeccionEmpezadoCopyWith(_VerDetalleLeccionEmpezado value,
          $Res Function(_VerDetalleLeccionEmpezado) then) =
      __$VerDetalleLeccionEmpezadoCopyWithImpl<$Res>;
  @override
  $Res call({Identificador uuidCurso, Identificador uuidLeccion});
}

/// @nodoc
class __$VerDetalleLeccionEmpezadoCopyWithImpl<$Res>
    extends _$ConsultarLeccionEventCopyWithImpl<$Res>
    implements _$VerDetalleLeccionEmpezadoCopyWith<$Res> {
  __$VerDetalleLeccionEmpezadoCopyWithImpl(_VerDetalleLeccionEmpezado _value,
      $Res Function(_VerDetalleLeccionEmpezado) _then)
      : super(_value, (v) => _then(v as _VerDetalleLeccionEmpezado));

  @override
  _VerDetalleLeccionEmpezado get _value =>
      super._value as _VerDetalleLeccionEmpezado;

  @override
  $Res call({
    Object? uuidCurso = freezed,
    Object? uuidLeccion = freezed,
  }) {
    return _then(_VerDetalleLeccionEmpezado(
      uuidCurso == freezed
          ? _value.uuidCurso
          : uuidCurso // ignore: cast_nullable_to_non_nullable
              as Identificador,
      uuidLeccion == freezed
          ? _value.uuidLeccion
          : uuidLeccion // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

class _$_VerDetalleLeccionEmpezado implements _VerDetalleLeccionEmpezado {
  const _$_VerDetalleLeccionEmpezado(this.uuidCurso, this.uuidLeccion);

  @override
  final Identificador uuidCurso;
  @override
  final Identificador uuidLeccion;

  @override
  String toString() {
    return 'ConsultarLeccionEvent.verDetalleLeccionEmpezado(uuidCurso: $uuidCurso, uuidLeccion: $uuidLeccion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerDetalleLeccionEmpezado &&
            (identical(other.uuidCurso, uuidCurso) ||
                const DeepCollectionEquality()
                    .equals(other.uuidCurso, uuidCurso)) &&
            (identical(other.uuidLeccion, uuidLeccion) ||
                const DeepCollectionEquality()
                    .equals(other.uuidLeccion, uuidLeccion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuidCurso) ^
      const DeepCollectionEquality().hash(uuidLeccion);

  @JsonKey(ignore: true)
  @override
  _$VerDetalleLeccionEmpezadoCopyWith<_VerDetalleLeccionEmpezado>
      get copyWith =>
          __$VerDetalleLeccionEmpezadoCopyWithImpl<_VerDetalleLeccionEmpezado>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identificador uuidCurso, Identificador uuidLeccion)
        verDetalleLeccionEmpezado,
  }) {
    return verDetalleLeccionEmpezado(uuidCurso, uuidLeccion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidCurso, Identificador uuidLeccion)?
        verDetalleLeccionEmpezado,
    required TResult orElse(),
  }) {
    if (verDetalleLeccionEmpezado != null) {
      return verDetalleLeccionEmpezado(uuidCurso, uuidLeccion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerDetalleLeccionEmpezado value)
        verDetalleLeccionEmpezado,
  }) {
    return verDetalleLeccionEmpezado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerDetalleLeccionEmpezado value)?
        verDetalleLeccionEmpezado,
    required TResult orElse(),
  }) {
    if (verDetalleLeccionEmpezado != null) {
      return verDetalleLeccionEmpezado(this);
    }
    return orElse();
  }
}

abstract class _VerDetalleLeccionEmpezado implements ConsultarLeccionEvent {
  const factory _VerDetalleLeccionEmpezado(
          Identificador uuidCurso, Identificador uuidLeccion) =
      _$_VerDetalleLeccionEmpezado;

  @override
  Identificador get uuidCurso => throw _privateConstructorUsedError;
  @override
  Identificador get uuidLeccion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerDetalleLeccionEmpezadoCopyWith<_VerDetalleLeccionEmpezado>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConsultarLeccionStateTearOff {
  const _$ConsultarLeccionStateTearOff();

  _Inicial inicial() {
    return const _Inicial();
  }

  _VerDetalleLeccionEnProgreso verDetalleLeccionEnProgreso() {
    return const _VerDetalleLeccionEnProgreso();
  }

  _VerDetalleLeccionCargada verDetalleLeccionCargada(Leccion leccion) {
    return _VerDetalleLeccionCargada(
      leccion,
    );
  }

  _VerDetalleLeccionFallida verDetalleLeccionFallida(
      MoocExcepcion leccionExcepcion) {
    return _VerDetalleLeccionFallida(
      leccionExcepcion,
    );
  }
}

/// @nodoc
const $ConsultarLeccionState = _$ConsultarLeccionStateTearOff();

/// @nodoc
mixin _$ConsultarLeccionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() verDetalleLeccionEnProgreso,
    required TResult Function(Leccion leccion) verDetalleLeccionCargada,
    required TResult Function(MoocExcepcion leccionExcepcion)
        verDetalleLeccionFallida,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? verDetalleLeccionEnProgreso,
    TResult Function(Leccion leccion)? verDetalleLeccionCargada,
    TResult Function(MoocExcepcion leccionExcepcion)? verDetalleLeccionFallida,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_VerDetalleLeccionEnProgreso value)
        verDetalleLeccionEnProgreso,
    required TResult Function(_VerDetalleLeccionCargada value)
        verDetalleLeccionCargada,
    required TResult Function(_VerDetalleLeccionFallida value)
        verDetalleLeccionFallida,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_VerDetalleLeccionEnProgreso value)?
        verDetalleLeccionEnProgreso,
    TResult Function(_VerDetalleLeccionCargada value)? verDetalleLeccionCargada,
    TResult Function(_VerDetalleLeccionFallida value)? verDetalleLeccionFallida,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultarLeccionStateCopyWith<$Res> {
  factory $ConsultarLeccionStateCopyWith(ConsultarLeccionState value,
          $Res Function(ConsultarLeccionState) then) =
      _$ConsultarLeccionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConsultarLeccionStateCopyWithImpl<$Res>
    implements $ConsultarLeccionStateCopyWith<$Res> {
  _$ConsultarLeccionStateCopyWithImpl(this._value, this._then);

  final ConsultarLeccionState _value;
  // ignore: unused_field
  final $Res Function(ConsultarLeccionState) _then;
}

/// @nodoc
abstract class _$InicialCopyWith<$Res> {
  factory _$InicialCopyWith(_Inicial value, $Res Function(_Inicial) then) =
      __$InicialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InicialCopyWithImpl<$Res>
    extends _$ConsultarLeccionStateCopyWithImpl<$Res>
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
    return 'ConsultarLeccionState.inicial()';
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
    required TResult Function() verDetalleLeccionEnProgreso,
    required TResult Function(Leccion leccion) verDetalleLeccionCargada,
    required TResult Function(MoocExcepcion leccionExcepcion)
        verDetalleLeccionFallida,
  }) {
    return inicial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? verDetalleLeccionEnProgreso,
    TResult Function(Leccion leccion)? verDetalleLeccionCargada,
    TResult Function(MoocExcepcion leccionExcepcion)? verDetalleLeccionFallida,
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
    required TResult Function(_VerDetalleLeccionEnProgreso value)
        verDetalleLeccionEnProgreso,
    required TResult Function(_VerDetalleLeccionCargada value)
        verDetalleLeccionCargada,
    required TResult Function(_VerDetalleLeccionFallida value)
        verDetalleLeccionFallida,
  }) {
    return inicial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_VerDetalleLeccionEnProgreso value)?
        verDetalleLeccionEnProgreso,
    TResult Function(_VerDetalleLeccionCargada value)? verDetalleLeccionCargada,
    TResult Function(_VerDetalleLeccionFallida value)? verDetalleLeccionFallida,
    required TResult orElse(),
  }) {
    if (inicial != null) {
      return inicial(this);
    }
    return orElse();
  }
}

abstract class _Inicial implements ConsultarLeccionState {
  const factory _Inicial() = _$_Inicial;
}

/// @nodoc
abstract class _$VerDetalleLeccionEnProgresoCopyWith<$Res> {
  factory _$VerDetalleLeccionEnProgresoCopyWith(
          _VerDetalleLeccionEnProgreso value,
          $Res Function(_VerDetalleLeccionEnProgreso) then) =
      __$VerDetalleLeccionEnProgresoCopyWithImpl<$Res>;
}

/// @nodoc
class __$VerDetalleLeccionEnProgresoCopyWithImpl<$Res>
    extends _$ConsultarLeccionStateCopyWithImpl<$Res>
    implements _$VerDetalleLeccionEnProgresoCopyWith<$Res> {
  __$VerDetalleLeccionEnProgresoCopyWithImpl(
      _VerDetalleLeccionEnProgreso _value,
      $Res Function(_VerDetalleLeccionEnProgreso) _then)
      : super(_value, (v) => _then(v as _VerDetalleLeccionEnProgreso));

  @override
  _VerDetalleLeccionEnProgreso get _value =>
      super._value as _VerDetalleLeccionEnProgreso;
}

/// @nodoc

class _$_VerDetalleLeccionEnProgreso implements _VerDetalleLeccionEnProgreso {
  const _$_VerDetalleLeccionEnProgreso();

  @override
  String toString() {
    return 'ConsultarLeccionState.verDetalleLeccionEnProgreso()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VerDetalleLeccionEnProgreso);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() verDetalleLeccionEnProgreso,
    required TResult Function(Leccion leccion) verDetalleLeccionCargada,
    required TResult Function(MoocExcepcion leccionExcepcion)
        verDetalleLeccionFallida,
  }) {
    return verDetalleLeccionEnProgreso();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? verDetalleLeccionEnProgreso,
    TResult Function(Leccion leccion)? verDetalleLeccionCargada,
    TResult Function(MoocExcepcion leccionExcepcion)? verDetalleLeccionFallida,
    required TResult orElse(),
  }) {
    if (verDetalleLeccionEnProgreso != null) {
      return verDetalleLeccionEnProgreso();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_VerDetalleLeccionEnProgreso value)
        verDetalleLeccionEnProgreso,
    required TResult Function(_VerDetalleLeccionCargada value)
        verDetalleLeccionCargada,
    required TResult Function(_VerDetalleLeccionFallida value)
        verDetalleLeccionFallida,
  }) {
    return verDetalleLeccionEnProgreso(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_VerDetalleLeccionEnProgreso value)?
        verDetalleLeccionEnProgreso,
    TResult Function(_VerDetalleLeccionCargada value)? verDetalleLeccionCargada,
    TResult Function(_VerDetalleLeccionFallida value)? verDetalleLeccionFallida,
    required TResult orElse(),
  }) {
    if (verDetalleLeccionEnProgreso != null) {
      return verDetalleLeccionEnProgreso(this);
    }
    return orElse();
  }
}

abstract class _VerDetalleLeccionEnProgreso implements ConsultarLeccionState {
  const factory _VerDetalleLeccionEnProgreso() = _$_VerDetalleLeccionEnProgreso;
}

/// @nodoc
abstract class _$VerDetalleLeccionCargadaCopyWith<$Res> {
  factory _$VerDetalleLeccionCargadaCopyWith(_VerDetalleLeccionCargada value,
          $Res Function(_VerDetalleLeccionCargada) then) =
      __$VerDetalleLeccionCargadaCopyWithImpl<$Res>;
  $Res call({Leccion leccion});

  $LeccionCopyWith<$Res> get leccion;
}

/// @nodoc
class __$VerDetalleLeccionCargadaCopyWithImpl<$Res>
    extends _$ConsultarLeccionStateCopyWithImpl<$Res>
    implements _$VerDetalleLeccionCargadaCopyWith<$Res> {
  __$VerDetalleLeccionCargadaCopyWithImpl(_VerDetalleLeccionCargada _value,
      $Res Function(_VerDetalleLeccionCargada) _then)
      : super(_value, (v) => _then(v as _VerDetalleLeccionCargada));

  @override
  _VerDetalleLeccionCargada get _value =>
      super._value as _VerDetalleLeccionCargada;

  @override
  $Res call({
    Object? leccion = freezed,
  }) {
    return _then(_VerDetalleLeccionCargada(
      leccion == freezed
          ? _value.leccion
          : leccion // ignore: cast_nullable_to_non_nullable
              as Leccion,
    ));
  }

  @override
  $LeccionCopyWith<$Res> get leccion {
    return $LeccionCopyWith<$Res>(_value.leccion, (value) {
      return _then(_value.copyWith(leccion: value));
    });
  }
}

/// @nodoc

class _$_VerDetalleLeccionCargada implements _VerDetalleLeccionCargada {
  const _$_VerDetalleLeccionCargada(this.leccion);

  @override
  final Leccion leccion;

  @override
  String toString() {
    return 'ConsultarLeccionState.verDetalleLeccionCargada(leccion: $leccion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerDetalleLeccionCargada &&
            (identical(other.leccion, leccion) ||
                const DeepCollectionEquality().equals(other.leccion, leccion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(leccion);

  @JsonKey(ignore: true)
  @override
  _$VerDetalleLeccionCargadaCopyWith<_VerDetalleLeccionCargada> get copyWith =>
      __$VerDetalleLeccionCargadaCopyWithImpl<_VerDetalleLeccionCargada>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() verDetalleLeccionEnProgreso,
    required TResult Function(Leccion leccion) verDetalleLeccionCargada,
    required TResult Function(MoocExcepcion leccionExcepcion)
        verDetalleLeccionFallida,
  }) {
    return verDetalleLeccionCargada(leccion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? verDetalleLeccionEnProgreso,
    TResult Function(Leccion leccion)? verDetalleLeccionCargada,
    TResult Function(MoocExcepcion leccionExcepcion)? verDetalleLeccionFallida,
    required TResult orElse(),
  }) {
    if (verDetalleLeccionCargada != null) {
      return verDetalleLeccionCargada(leccion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_VerDetalleLeccionEnProgreso value)
        verDetalleLeccionEnProgreso,
    required TResult Function(_VerDetalleLeccionCargada value)
        verDetalleLeccionCargada,
    required TResult Function(_VerDetalleLeccionFallida value)
        verDetalleLeccionFallida,
  }) {
    return verDetalleLeccionCargada(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_VerDetalleLeccionEnProgreso value)?
        verDetalleLeccionEnProgreso,
    TResult Function(_VerDetalleLeccionCargada value)? verDetalleLeccionCargada,
    TResult Function(_VerDetalleLeccionFallida value)? verDetalleLeccionFallida,
    required TResult orElse(),
  }) {
    if (verDetalleLeccionCargada != null) {
      return verDetalleLeccionCargada(this);
    }
    return orElse();
  }
}

abstract class _VerDetalleLeccionCargada implements ConsultarLeccionState {
  const factory _VerDetalleLeccionCargada(Leccion leccion) =
      _$_VerDetalleLeccionCargada;

  Leccion get leccion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerDetalleLeccionCargadaCopyWith<_VerDetalleLeccionCargada> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerDetalleLeccionFallidaCopyWith<$Res> {
  factory _$VerDetalleLeccionFallidaCopyWith(_VerDetalleLeccionFallida value,
          $Res Function(_VerDetalleLeccionFallida) then) =
      __$VerDetalleLeccionFallidaCopyWithImpl<$Res>;
  $Res call({MoocExcepcion leccionExcepcion});

  $MoocExcepcionCopyWith<$Res> get leccionExcepcion;
}

/// @nodoc
class __$VerDetalleLeccionFallidaCopyWithImpl<$Res>
    extends _$ConsultarLeccionStateCopyWithImpl<$Res>
    implements _$VerDetalleLeccionFallidaCopyWith<$Res> {
  __$VerDetalleLeccionFallidaCopyWithImpl(_VerDetalleLeccionFallida _value,
      $Res Function(_VerDetalleLeccionFallida) _then)
      : super(_value, (v) => _then(v as _VerDetalleLeccionFallida));

  @override
  _VerDetalleLeccionFallida get _value =>
      super._value as _VerDetalleLeccionFallida;

  @override
  $Res call({
    Object? leccionExcepcion = freezed,
  }) {
    return _then(_VerDetalleLeccionFallida(
      leccionExcepcion == freezed
          ? _value.leccionExcepcion
          : leccionExcepcion // ignore: cast_nullable_to_non_nullable
              as MoocExcepcion,
    ));
  }

  @override
  $MoocExcepcionCopyWith<$Res> get leccionExcepcion {
    return $MoocExcepcionCopyWith<$Res>(_value.leccionExcepcion, (value) {
      return _then(_value.copyWith(leccionExcepcion: value));
    });
  }
}

/// @nodoc

class _$_VerDetalleLeccionFallida implements _VerDetalleLeccionFallida {
  const _$_VerDetalleLeccionFallida(this.leccionExcepcion);

  @override
  final MoocExcepcion leccionExcepcion;

  @override
  String toString() {
    return 'ConsultarLeccionState.verDetalleLeccionFallida(leccionExcepcion: $leccionExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerDetalleLeccionFallida &&
            (identical(other.leccionExcepcion, leccionExcepcion) ||
                const DeepCollectionEquality()
                    .equals(other.leccionExcepcion, leccionExcepcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(leccionExcepcion);

  @JsonKey(ignore: true)
  @override
  _$VerDetalleLeccionFallidaCopyWith<_VerDetalleLeccionFallida> get copyWith =>
      __$VerDetalleLeccionFallidaCopyWithImpl<_VerDetalleLeccionFallida>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() verDetalleLeccionEnProgreso,
    required TResult Function(Leccion leccion) verDetalleLeccionCargada,
    required TResult Function(MoocExcepcion leccionExcepcion)
        verDetalleLeccionFallida,
  }) {
    return verDetalleLeccionFallida(leccionExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? verDetalleLeccionEnProgreso,
    TResult Function(Leccion leccion)? verDetalleLeccionCargada,
    TResult Function(MoocExcepcion leccionExcepcion)? verDetalleLeccionFallida,
    required TResult orElse(),
  }) {
    if (verDetalleLeccionFallida != null) {
      return verDetalleLeccionFallida(leccionExcepcion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_VerDetalleLeccionEnProgreso value)
        verDetalleLeccionEnProgreso,
    required TResult Function(_VerDetalleLeccionCargada value)
        verDetalleLeccionCargada,
    required TResult Function(_VerDetalleLeccionFallida value)
        verDetalleLeccionFallida,
  }) {
    return verDetalleLeccionFallida(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_VerDetalleLeccionEnProgreso value)?
        verDetalleLeccionEnProgreso,
    TResult Function(_VerDetalleLeccionCargada value)? verDetalleLeccionCargada,
    TResult Function(_VerDetalleLeccionFallida value)? verDetalleLeccionFallida,
    required TResult orElse(),
  }) {
    if (verDetalleLeccionFallida != null) {
      return verDetalleLeccionFallida(this);
    }
    return orElse();
  }
}

abstract class _VerDetalleLeccionFallida implements ConsultarLeccionState {
  const factory _VerDetalleLeccionFallida(MoocExcepcion leccionExcepcion) =
      _$_VerDetalleLeccionFallida;

  MoocExcepcion get leccionExcepcion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerDetalleLeccionFallidaCopyWith<_VerDetalleLeccionFallida> get copyWith =>
      throw _privateConstructorUsedError;
}
