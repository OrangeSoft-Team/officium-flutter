// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'consultar_cuestionario_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConsultarCuestionarioEventTearOff {
  const _$ConsultarCuestionarioEventTearOff();

  _ConsultarCuestionario consultarCuestionario(Identificador uuidCurso) {
    return _ConsultarCuestionario(
      uuidCurso,
    );
  }
}

/// @nodoc
const $ConsultarCuestionarioEvent = _$ConsultarCuestionarioEventTearOff();

/// @nodoc
mixin _$ConsultarCuestionarioEvent {
  Identificador get uuidCurso => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidCurso) consultarCuestionario,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidCurso)? consultarCuestionario,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConsultarCuestionario value)
        consultarCuestionario,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConsultarCuestionario value)? consultarCuestionario,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConsultarCuestionarioEventCopyWith<ConsultarCuestionarioEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultarCuestionarioEventCopyWith<$Res> {
  factory $ConsultarCuestionarioEventCopyWith(ConsultarCuestionarioEvent value,
          $Res Function(ConsultarCuestionarioEvent) then) =
      _$ConsultarCuestionarioEventCopyWithImpl<$Res>;
  $Res call({Identificador uuidCurso});
}

/// @nodoc
class _$ConsultarCuestionarioEventCopyWithImpl<$Res>
    implements $ConsultarCuestionarioEventCopyWith<$Res> {
  _$ConsultarCuestionarioEventCopyWithImpl(this._value, this._then);

  final ConsultarCuestionarioEvent _value;
  // ignore: unused_field
  final $Res Function(ConsultarCuestionarioEvent) _then;

  @override
  $Res call({
    Object? uuidCurso = freezed,
  }) {
    return _then(_value.copyWith(
      uuidCurso: uuidCurso == freezed
          ? _value.uuidCurso
          : uuidCurso // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc
abstract class _$ConsultarCuestionarioCopyWith<$Res>
    implements $ConsultarCuestionarioEventCopyWith<$Res> {
  factory _$ConsultarCuestionarioCopyWith(_ConsultarCuestionario value,
          $Res Function(_ConsultarCuestionario) then) =
      __$ConsultarCuestionarioCopyWithImpl<$Res>;
  @override
  $Res call({Identificador uuidCurso});
}

/// @nodoc
class __$ConsultarCuestionarioCopyWithImpl<$Res>
    extends _$ConsultarCuestionarioEventCopyWithImpl<$Res>
    implements _$ConsultarCuestionarioCopyWith<$Res> {
  __$ConsultarCuestionarioCopyWithImpl(_ConsultarCuestionario _value,
      $Res Function(_ConsultarCuestionario) _then)
      : super(_value, (v) => _then(v as _ConsultarCuestionario));

  @override
  _ConsultarCuestionario get _value => super._value as _ConsultarCuestionario;

  @override
  $Res call({
    Object? uuidCurso = freezed,
  }) {
    return _then(_ConsultarCuestionario(
      uuidCurso == freezed
          ? _value.uuidCurso
          : uuidCurso // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

class _$_ConsultarCuestionario implements _ConsultarCuestionario {
  const _$_ConsultarCuestionario(this.uuidCurso);

  @override
  final Identificador uuidCurso;

  @override
  String toString() {
    return 'ConsultarCuestionarioEvent.consultarCuestionario(uuidCurso: $uuidCurso)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConsultarCuestionario &&
            (identical(other.uuidCurso, uuidCurso) ||
                const DeepCollectionEquality()
                    .equals(other.uuidCurso, uuidCurso)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuidCurso);

  @JsonKey(ignore: true)
  @override
  _$ConsultarCuestionarioCopyWith<_ConsultarCuestionario> get copyWith =>
      __$ConsultarCuestionarioCopyWithImpl<_ConsultarCuestionario>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidCurso) consultarCuestionario,
  }) {
    return consultarCuestionario(uuidCurso);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidCurso)? consultarCuestionario,
    required TResult orElse(),
  }) {
    if (consultarCuestionario != null) {
      return consultarCuestionario(uuidCurso);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConsultarCuestionario value)
        consultarCuestionario,
  }) {
    return consultarCuestionario(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConsultarCuestionario value)? consultarCuestionario,
    required TResult orElse(),
  }) {
    if (consultarCuestionario != null) {
      return consultarCuestionario(this);
    }
    return orElse();
  }
}

abstract class _ConsultarCuestionario implements ConsultarCuestionarioEvent {
  const factory _ConsultarCuestionario(Identificador uuidCurso) =
      _$_ConsultarCuestionario;

  @override
  Identificador get uuidCurso => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConsultarCuestionarioCopyWith<_ConsultarCuestionario> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConsultarCuestionarioStateTearOff {
  const _$ConsultarCuestionarioStateTearOff();

  _Inicial inicial() {
    return const _Inicial();
  }

  _CargaEnProgreso cargaEnProgreso() {
    return const _CargaEnProgreso();
  }

  _CargaExitosa cargaExitosa(Cuestionario cuestionario) {
    return _CargaExitosa(
      cuestionario,
    );
  }

  _CargaFallida cargaFallida(MoocExcepcion cuestionarioExcepcion) {
    return _CargaFallida(
      cuestionarioExcepcion,
    );
  }
}

/// @nodoc
const $ConsultarCuestionarioState = _$ConsultarCuestionarioStateTearOff();

/// @nodoc
mixin _$ConsultarCuestionarioState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(Cuestionario cuestionario) cargaExitosa,
    required TResult Function(MoocExcepcion cuestionarioExcepcion) cargaFallida,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(Cuestionario cuestionario)? cargaExitosa,
    TResult Function(MoocExcepcion cuestionarioExcepcion)? cargaFallida,
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
abstract class $ConsultarCuestionarioStateCopyWith<$Res> {
  factory $ConsultarCuestionarioStateCopyWith(ConsultarCuestionarioState value,
          $Res Function(ConsultarCuestionarioState) then) =
      _$ConsultarCuestionarioStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConsultarCuestionarioStateCopyWithImpl<$Res>
    implements $ConsultarCuestionarioStateCopyWith<$Res> {
  _$ConsultarCuestionarioStateCopyWithImpl(this._value, this._then);

  final ConsultarCuestionarioState _value;
  // ignore: unused_field
  final $Res Function(ConsultarCuestionarioState) _then;
}

/// @nodoc
abstract class _$InicialCopyWith<$Res> {
  factory _$InicialCopyWith(_Inicial value, $Res Function(_Inicial) then) =
      __$InicialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InicialCopyWithImpl<$Res>
    extends _$ConsultarCuestionarioStateCopyWithImpl<$Res>
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
    return 'ConsultarCuestionarioState.inicial()';
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
    required TResult Function(Cuestionario cuestionario) cargaExitosa,
    required TResult Function(MoocExcepcion cuestionarioExcepcion) cargaFallida,
  }) {
    return inicial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(Cuestionario cuestionario)? cargaExitosa,
    TResult Function(MoocExcepcion cuestionarioExcepcion)? cargaFallida,
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

abstract class _Inicial implements ConsultarCuestionarioState {
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
    extends _$ConsultarCuestionarioStateCopyWithImpl<$Res>
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
    return 'ConsultarCuestionarioState.cargaEnProgreso()';
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
    required TResult Function(Cuestionario cuestionario) cargaExitosa,
    required TResult Function(MoocExcepcion cuestionarioExcepcion) cargaFallida,
  }) {
    return cargaEnProgreso();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(Cuestionario cuestionario)? cargaExitosa,
    TResult Function(MoocExcepcion cuestionarioExcepcion)? cargaFallida,
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

abstract class _CargaEnProgreso implements ConsultarCuestionarioState {
  const factory _CargaEnProgreso() = _$_CargaEnProgreso;
}

/// @nodoc
abstract class _$CargaExitosaCopyWith<$Res> {
  factory _$CargaExitosaCopyWith(
          _CargaExitosa value, $Res Function(_CargaExitosa) then) =
      __$CargaExitosaCopyWithImpl<$Res>;
  $Res call({Cuestionario cuestionario});

  $CuestionarioCopyWith<$Res> get cuestionario;
}

/// @nodoc
class __$CargaExitosaCopyWithImpl<$Res>
    extends _$ConsultarCuestionarioStateCopyWithImpl<$Res>
    implements _$CargaExitosaCopyWith<$Res> {
  __$CargaExitosaCopyWithImpl(
      _CargaExitosa _value, $Res Function(_CargaExitosa) _then)
      : super(_value, (v) => _then(v as _CargaExitosa));

  @override
  _CargaExitosa get _value => super._value as _CargaExitosa;

  @override
  $Res call({
    Object? cuestionario = freezed,
  }) {
    return _then(_CargaExitosa(
      cuestionario == freezed
          ? _value.cuestionario
          : cuestionario // ignore: cast_nullable_to_non_nullable
              as Cuestionario,
    ));
  }

  @override
  $CuestionarioCopyWith<$Res> get cuestionario {
    return $CuestionarioCopyWith<$Res>(_value.cuestionario, (value) {
      return _then(_value.copyWith(cuestionario: value));
    });
  }
}

/// @nodoc

class _$_CargaExitosa implements _CargaExitosa {
  const _$_CargaExitosa(this.cuestionario);

  @override
  final Cuestionario cuestionario;

  @override
  String toString() {
    return 'ConsultarCuestionarioState.cargaExitosa(cuestionario: $cuestionario)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CargaExitosa &&
            (identical(other.cuestionario, cuestionario) ||
                const DeepCollectionEquality()
                    .equals(other.cuestionario, cuestionario)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cuestionario);

  @JsonKey(ignore: true)
  @override
  _$CargaExitosaCopyWith<_CargaExitosa> get copyWith =>
      __$CargaExitosaCopyWithImpl<_CargaExitosa>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(Cuestionario cuestionario) cargaExitosa,
    required TResult Function(MoocExcepcion cuestionarioExcepcion) cargaFallida,
  }) {
    return cargaExitosa(cuestionario);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(Cuestionario cuestionario)? cargaExitosa,
    TResult Function(MoocExcepcion cuestionarioExcepcion)? cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaExitosa != null) {
      return cargaExitosa(cuestionario);
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

abstract class _CargaExitosa implements ConsultarCuestionarioState {
  const factory _CargaExitosa(Cuestionario cuestionario) = _$_CargaExitosa;

  Cuestionario get cuestionario => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CargaExitosaCopyWith<_CargaExitosa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CargaFallidaCopyWith<$Res> {
  factory _$CargaFallidaCopyWith(
          _CargaFallida value, $Res Function(_CargaFallida) then) =
      __$CargaFallidaCopyWithImpl<$Res>;
  $Res call({MoocExcepcion cuestionarioExcepcion});

  $MoocExcepcionCopyWith<$Res> get cuestionarioExcepcion;
}

/// @nodoc
class __$CargaFallidaCopyWithImpl<$Res>
    extends _$ConsultarCuestionarioStateCopyWithImpl<$Res>
    implements _$CargaFallidaCopyWith<$Res> {
  __$CargaFallidaCopyWithImpl(
      _CargaFallida _value, $Res Function(_CargaFallida) _then)
      : super(_value, (v) => _then(v as _CargaFallida));

  @override
  _CargaFallida get _value => super._value as _CargaFallida;

  @override
  $Res call({
    Object? cuestionarioExcepcion = freezed,
  }) {
    return _then(_CargaFallida(
      cuestionarioExcepcion == freezed
          ? _value.cuestionarioExcepcion
          : cuestionarioExcepcion // ignore: cast_nullable_to_non_nullable
              as MoocExcepcion,
    ));
  }

  @override
  $MoocExcepcionCopyWith<$Res> get cuestionarioExcepcion {
    return $MoocExcepcionCopyWith<$Res>(_value.cuestionarioExcepcion, (value) {
      return _then(_value.copyWith(cuestionarioExcepcion: value));
    });
  }
}

/// @nodoc

class _$_CargaFallida implements _CargaFallida {
  const _$_CargaFallida(this.cuestionarioExcepcion);

  @override
  final MoocExcepcion cuestionarioExcepcion;

  @override
  String toString() {
    return 'ConsultarCuestionarioState.cargaFallida(cuestionarioExcepcion: $cuestionarioExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CargaFallida &&
            (identical(other.cuestionarioExcepcion, cuestionarioExcepcion) ||
                const DeepCollectionEquality().equals(
                    other.cuestionarioExcepcion, cuestionarioExcepcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cuestionarioExcepcion);

  @JsonKey(ignore: true)
  @override
  _$CargaFallidaCopyWith<_CargaFallida> get copyWith =>
      __$CargaFallidaCopyWithImpl<_CargaFallida>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(Cuestionario cuestionario) cargaExitosa,
    required TResult Function(MoocExcepcion cuestionarioExcepcion) cargaFallida,
  }) {
    return cargaFallida(cuestionarioExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(Cuestionario cuestionario)? cargaExitosa,
    TResult Function(MoocExcepcion cuestionarioExcepcion)? cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaFallida != null) {
      return cargaFallida(cuestionarioExcepcion);
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

abstract class _CargaFallida implements ConsultarCuestionarioState {
  const factory _CargaFallida(MoocExcepcion cuestionarioExcepcion) =
      _$_CargaFallida;

  MoocExcepcion get cuestionarioExcepcion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CargaFallidaCopyWith<_CargaFallida> get copyWith =>
      throw _privateConstructorUsedError;
}
