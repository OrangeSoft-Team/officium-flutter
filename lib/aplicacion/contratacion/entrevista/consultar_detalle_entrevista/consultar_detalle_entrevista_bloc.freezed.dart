// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'consultar_detalle_entrevista_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConsultarDetalleEntrevistaEventTearOff {
  const _$ConsultarDetalleEntrevistaEventTearOff();

  _ConsultarDetalleEntrevistaComenzado consultarDetalleEntrevistaComenzado(
      Identificador uuidEntrevista) {
    return _ConsultarDetalleEntrevistaComenzado(
      uuidEntrevista,
    );
  }
}

/// @nodoc
const $ConsultarDetalleEntrevistaEvent =
    _$ConsultarDetalleEntrevistaEventTearOff();

/// @nodoc
mixin _$ConsultarDetalleEntrevistaEvent {
  Identificador get uuidEntrevista => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEntrevista)
        consultarDetalleEntrevistaComenzado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEntrevista)?
        consultarDetalleEntrevistaComenzado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConsultarDetalleEntrevistaComenzado value)
        consultarDetalleEntrevistaComenzado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConsultarDetalleEntrevistaComenzado value)?
        consultarDetalleEntrevistaComenzado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConsultarDetalleEntrevistaEventCopyWith<ConsultarDetalleEntrevistaEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultarDetalleEntrevistaEventCopyWith<$Res> {
  factory $ConsultarDetalleEntrevistaEventCopyWith(
          ConsultarDetalleEntrevistaEvent value,
          $Res Function(ConsultarDetalleEntrevistaEvent) then) =
      _$ConsultarDetalleEntrevistaEventCopyWithImpl<$Res>;
  $Res call({Identificador uuidEntrevista});
}

/// @nodoc
class _$ConsultarDetalleEntrevistaEventCopyWithImpl<$Res>
    implements $ConsultarDetalleEntrevistaEventCopyWith<$Res> {
  _$ConsultarDetalleEntrevistaEventCopyWithImpl(this._value, this._then);

  final ConsultarDetalleEntrevistaEvent _value;
  // ignore: unused_field
  final $Res Function(ConsultarDetalleEntrevistaEvent) _then;

  @override
  $Res call({
    Object? uuidEntrevista = freezed,
  }) {
    return _then(_value.copyWith(
      uuidEntrevista: uuidEntrevista == freezed
          ? _value.uuidEntrevista
          : uuidEntrevista // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc
abstract class _$ConsultarDetalleEntrevistaComenzadoCopyWith<$Res>
    implements $ConsultarDetalleEntrevistaEventCopyWith<$Res> {
  factory _$ConsultarDetalleEntrevistaComenzadoCopyWith(
          _ConsultarDetalleEntrevistaComenzado value,
          $Res Function(_ConsultarDetalleEntrevistaComenzado) then) =
      __$ConsultarDetalleEntrevistaComenzadoCopyWithImpl<$Res>;
  @override
  $Res call({Identificador uuidEntrevista});
}

/// @nodoc
class __$ConsultarDetalleEntrevistaComenzadoCopyWithImpl<$Res>
    extends _$ConsultarDetalleEntrevistaEventCopyWithImpl<$Res>
    implements _$ConsultarDetalleEntrevistaComenzadoCopyWith<$Res> {
  __$ConsultarDetalleEntrevistaComenzadoCopyWithImpl(
      _ConsultarDetalleEntrevistaComenzado _value,
      $Res Function(_ConsultarDetalleEntrevistaComenzado) _then)
      : super(_value, (v) => _then(v as _ConsultarDetalleEntrevistaComenzado));

  @override
  _ConsultarDetalleEntrevistaComenzado get _value =>
      super._value as _ConsultarDetalleEntrevistaComenzado;

  @override
  $Res call({
    Object? uuidEntrevista = freezed,
  }) {
    return _then(_ConsultarDetalleEntrevistaComenzado(
      uuidEntrevista == freezed
          ? _value.uuidEntrevista
          : uuidEntrevista // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

class _$_ConsultarDetalleEntrevistaComenzado
    implements _ConsultarDetalleEntrevistaComenzado {
  const _$_ConsultarDetalleEntrevistaComenzado(this.uuidEntrevista);

  @override
  final Identificador uuidEntrevista;

  @override
  String toString() {
    return 'ConsultarDetalleEntrevistaEvent.consultarDetalleEntrevistaComenzado(uuidEntrevista: $uuidEntrevista)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConsultarDetalleEntrevistaComenzado &&
            (identical(other.uuidEntrevista, uuidEntrevista) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEntrevista, uuidEntrevista)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuidEntrevista);

  @JsonKey(ignore: true)
  @override
  _$ConsultarDetalleEntrevistaComenzadoCopyWith<
          _ConsultarDetalleEntrevistaComenzado>
      get copyWith => __$ConsultarDetalleEntrevistaComenzadoCopyWithImpl<
          _ConsultarDetalleEntrevistaComenzado>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEntrevista)
        consultarDetalleEntrevistaComenzado,
  }) {
    return consultarDetalleEntrevistaComenzado(uuidEntrevista);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEntrevista)?
        consultarDetalleEntrevistaComenzado,
    required TResult orElse(),
  }) {
    if (consultarDetalleEntrevistaComenzado != null) {
      return consultarDetalleEntrevistaComenzado(uuidEntrevista);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConsultarDetalleEntrevistaComenzado value)
        consultarDetalleEntrevistaComenzado,
  }) {
    return consultarDetalleEntrevistaComenzado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConsultarDetalleEntrevistaComenzado value)?
        consultarDetalleEntrevistaComenzado,
    required TResult orElse(),
  }) {
    if (consultarDetalleEntrevistaComenzado != null) {
      return consultarDetalleEntrevistaComenzado(this);
    }
    return orElse();
  }
}

abstract class _ConsultarDetalleEntrevistaComenzado
    implements ConsultarDetalleEntrevistaEvent {
  const factory _ConsultarDetalleEntrevistaComenzado(
      Identificador uuidEntrevista) = _$_ConsultarDetalleEntrevistaComenzado;

  @override
  Identificador get uuidEntrevista => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConsultarDetalleEntrevistaComenzadoCopyWith<
          _ConsultarDetalleEntrevistaComenzado>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConsultarDetalleEntrevistaStateTearOff {
  const _$ConsultarDetalleEntrevistaStateTearOff();

  _Inicial inicial() {
    return const _Inicial();
  }

  _VerDetalleEntrevistaEnProgreso verDetalleEntrevistaEnProgreso() {
    return const _VerDetalleEntrevistaEnProgreso();
  }

  _VerDetalleEntrevistaCargada verDetalleEntrevistaCargada(
      Entrevista entrevista) {
    return _VerDetalleEntrevistaCargada(
      entrevista,
    );
  }

  _VerDetalleEntrevistaFallida verDetalleEntrevistaFallida(
      ContratacionExcepcion entrevistaExcepcion) {
    return _VerDetalleEntrevistaFallida(
      entrevistaExcepcion,
    );
  }
}

/// @nodoc
const $ConsultarDetalleEntrevistaState =
    _$ConsultarDetalleEntrevistaStateTearOff();

/// @nodoc
mixin _$ConsultarDetalleEntrevistaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() verDetalleEntrevistaEnProgreso,
    required TResult Function(Entrevista entrevista)
        verDetalleEntrevistaCargada,
    required TResult Function(ContratacionExcepcion entrevistaExcepcion)
        verDetalleEntrevistaFallida,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? verDetalleEntrevistaEnProgreso,
    TResult Function(Entrevista entrevista)? verDetalleEntrevistaCargada,
    TResult Function(ContratacionExcepcion entrevistaExcepcion)?
        verDetalleEntrevistaFallida,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_VerDetalleEntrevistaEnProgreso value)
        verDetalleEntrevistaEnProgreso,
    required TResult Function(_VerDetalleEntrevistaCargada value)
        verDetalleEntrevistaCargada,
    required TResult Function(_VerDetalleEntrevistaFallida value)
        verDetalleEntrevistaFallida,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_VerDetalleEntrevistaEnProgreso value)?
        verDetalleEntrevistaEnProgreso,
    TResult Function(_VerDetalleEntrevistaCargada value)?
        verDetalleEntrevistaCargada,
    TResult Function(_VerDetalleEntrevistaFallida value)?
        verDetalleEntrevistaFallida,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultarDetalleEntrevistaStateCopyWith<$Res> {
  factory $ConsultarDetalleEntrevistaStateCopyWith(
          ConsultarDetalleEntrevistaState value,
          $Res Function(ConsultarDetalleEntrevistaState) then) =
      _$ConsultarDetalleEntrevistaStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConsultarDetalleEntrevistaStateCopyWithImpl<$Res>
    implements $ConsultarDetalleEntrevistaStateCopyWith<$Res> {
  _$ConsultarDetalleEntrevistaStateCopyWithImpl(this._value, this._then);

  final ConsultarDetalleEntrevistaState _value;
  // ignore: unused_field
  final $Res Function(ConsultarDetalleEntrevistaState) _then;
}

/// @nodoc
abstract class _$InicialCopyWith<$Res> {
  factory _$InicialCopyWith(_Inicial value, $Res Function(_Inicial) then) =
      __$InicialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InicialCopyWithImpl<$Res>
    extends _$ConsultarDetalleEntrevistaStateCopyWithImpl<$Res>
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
    return 'ConsultarDetalleEntrevistaState.inicial()';
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
    required TResult Function() verDetalleEntrevistaEnProgreso,
    required TResult Function(Entrevista entrevista)
        verDetalleEntrevistaCargada,
    required TResult Function(ContratacionExcepcion entrevistaExcepcion)
        verDetalleEntrevistaFallida,
  }) {
    return inicial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? verDetalleEntrevistaEnProgreso,
    TResult Function(Entrevista entrevista)? verDetalleEntrevistaCargada,
    TResult Function(ContratacionExcepcion entrevistaExcepcion)?
        verDetalleEntrevistaFallida,
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
    required TResult Function(_VerDetalleEntrevistaEnProgreso value)
        verDetalleEntrevistaEnProgreso,
    required TResult Function(_VerDetalleEntrevistaCargada value)
        verDetalleEntrevistaCargada,
    required TResult Function(_VerDetalleEntrevistaFallida value)
        verDetalleEntrevistaFallida,
  }) {
    return inicial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_VerDetalleEntrevistaEnProgreso value)?
        verDetalleEntrevistaEnProgreso,
    TResult Function(_VerDetalleEntrevistaCargada value)?
        verDetalleEntrevistaCargada,
    TResult Function(_VerDetalleEntrevistaFallida value)?
        verDetalleEntrevistaFallida,
    required TResult orElse(),
  }) {
    if (inicial != null) {
      return inicial(this);
    }
    return orElse();
  }
}

abstract class _Inicial implements ConsultarDetalleEntrevistaState {
  const factory _Inicial() = _$_Inicial;
}

/// @nodoc
abstract class _$VerDetalleEntrevistaEnProgresoCopyWith<$Res> {
  factory _$VerDetalleEntrevistaEnProgresoCopyWith(
          _VerDetalleEntrevistaEnProgreso value,
          $Res Function(_VerDetalleEntrevistaEnProgreso) then) =
      __$VerDetalleEntrevistaEnProgresoCopyWithImpl<$Res>;
}

/// @nodoc
class __$VerDetalleEntrevistaEnProgresoCopyWithImpl<$Res>
    extends _$ConsultarDetalleEntrevistaStateCopyWithImpl<$Res>
    implements _$VerDetalleEntrevistaEnProgresoCopyWith<$Res> {
  __$VerDetalleEntrevistaEnProgresoCopyWithImpl(
      _VerDetalleEntrevistaEnProgreso _value,
      $Res Function(_VerDetalleEntrevistaEnProgreso) _then)
      : super(_value, (v) => _then(v as _VerDetalleEntrevistaEnProgreso));

  @override
  _VerDetalleEntrevistaEnProgreso get _value =>
      super._value as _VerDetalleEntrevistaEnProgreso;
}

/// @nodoc

class _$_VerDetalleEntrevistaEnProgreso
    implements _VerDetalleEntrevistaEnProgreso {
  const _$_VerDetalleEntrevistaEnProgreso();

  @override
  String toString() {
    return 'ConsultarDetalleEntrevistaState.verDetalleEntrevistaEnProgreso()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VerDetalleEntrevistaEnProgreso);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() verDetalleEntrevistaEnProgreso,
    required TResult Function(Entrevista entrevista)
        verDetalleEntrevistaCargada,
    required TResult Function(ContratacionExcepcion entrevistaExcepcion)
        verDetalleEntrevistaFallida,
  }) {
    return verDetalleEntrevistaEnProgreso();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? verDetalleEntrevistaEnProgreso,
    TResult Function(Entrevista entrevista)? verDetalleEntrevistaCargada,
    TResult Function(ContratacionExcepcion entrevistaExcepcion)?
        verDetalleEntrevistaFallida,
    required TResult orElse(),
  }) {
    if (verDetalleEntrevistaEnProgreso != null) {
      return verDetalleEntrevistaEnProgreso();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_VerDetalleEntrevistaEnProgreso value)
        verDetalleEntrevistaEnProgreso,
    required TResult Function(_VerDetalleEntrevistaCargada value)
        verDetalleEntrevistaCargada,
    required TResult Function(_VerDetalleEntrevistaFallida value)
        verDetalleEntrevistaFallida,
  }) {
    return verDetalleEntrevistaEnProgreso(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_VerDetalleEntrevistaEnProgreso value)?
        verDetalleEntrevistaEnProgreso,
    TResult Function(_VerDetalleEntrevistaCargada value)?
        verDetalleEntrevistaCargada,
    TResult Function(_VerDetalleEntrevistaFallida value)?
        verDetalleEntrevistaFallida,
    required TResult orElse(),
  }) {
    if (verDetalleEntrevistaEnProgreso != null) {
      return verDetalleEntrevistaEnProgreso(this);
    }
    return orElse();
  }
}

abstract class _VerDetalleEntrevistaEnProgreso
    implements ConsultarDetalleEntrevistaState {
  const factory _VerDetalleEntrevistaEnProgreso() =
      _$_VerDetalleEntrevistaEnProgreso;
}

/// @nodoc
abstract class _$VerDetalleEntrevistaCargadaCopyWith<$Res> {
  factory _$VerDetalleEntrevistaCargadaCopyWith(
          _VerDetalleEntrevistaCargada value,
          $Res Function(_VerDetalleEntrevistaCargada) then) =
      __$VerDetalleEntrevistaCargadaCopyWithImpl<$Res>;
  $Res call({Entrevista entrevista});

  $EntrevistaCopyWith<$Res> get entrevista;
}

/// @nodoc
class __$VerDetalleEntrevistaCargadaCopyWithImpl<$Res>
    extends _$ConsultarDetalleEntrevistaStateCopyWithImpl<$Res>
    implements _$VerDetalleEntrevistaCargadaCopyWith<$Res> {
  __$VerDetalleEntrevistaCargadaCopyWithImpl(
      _VerDetalleEntrevistaCargada _value,
      $Res Function(_VerDetalleEntrevistaCargada) _then)
      : super(_value, (v) => _then(v as _VerDetalleEntrevistaCargada));

  @override
  _VerDetalleEntrevistaCargada get _value =>
      super._value as _VerDetalleEntrevistaCargada;

  @override
  $Res call({
    Object? entrevista = freezed,
  }) {
    return _then(_VerDetalleEntrevistaCargada(
      entrevista == freezed
          ? _value.entrevista
          : entrevista // ignore: cast_nullable_to_non_nullable
              as Entrevista,
    ));
  }

  @override
  $EntrevistaCopyWith<$Res> get entrevista {
    return $EntrevistaCopyWith<$Res>(_value.entrevista, (value) {
      return _then(_value.copyWith(entrevista: value));
    });
  }
}

/// @nodoc

class _$_VerDetalleEntrevistaCargada implements _VerDetalleEntrevistaCargada {
  const _$_VerDetalleEntrevistaCargada(this.entrevista);

  @override
  final Entrevista entrevista;

  @override
  String toString() {
    return 'ConsultarDetalleEntrevistaState.verDetalleEntrevistaCargada(entrevista: $entrevista)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerDetalleEntrevistaCargada &&
            (identical(other.entrevista, entrevista) ||
                const DeepCollectionEquality()
                    .equals(other.entrevista, entrevista)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entrevista);

  @JsonKey(ignore: true)
  @override
  _$VerDetalleEntrevistaCargadaCopyWith<_VerDetalleEntrevistaCargada>
      get copyWith => __$VerDetalleEntrevistaCargadaCopyWithImpl<
          _VerDetalleEntrevistaCargada>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() verDetalleEntrevistaEnProgreso,
    required TResult Function(Entrevista entrevista)
        verDetalleEntrevistaCargada,
    required TResult Function(ContratacionExcepcion entrevistaExcepcion)
        verDetalleEntrevistaFallida,
  }) {
    return verDetalleEntrevistaCargada(entrevista);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? verDetalleEntrevistaEnProgreso,
    TResult Function(Entrevista entrevista)? verDetalleEntrevistaCargada,
    TResult Function(ContratacionExcepcion entrevistaExcepcion)?
        verDetalleEntrevistaFallida,
    required TResult orElse(),
  }) {
    if (verDetalleEntrevistaCargada != null) {
      return verDetalleEntrevistaCargada(entrevista);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_VerDetalleEntrevistaEnProgreso value)
        verDetalleEntrevistaEnProgreso,
    required TResult Function(_VerDetalleEntrevistaCargada value)
        verDetalleEntrevistaCargada,
    required TResult Function(_VerDetalleEntrevistaFallida value)
        verDetalleEntrevistaFallida,
  }) {
    return verDetalleEntrevistaCargada(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_VerDetalleEntrevistaEnProgreso value)?
        verDetalleEntrevistaEnProgreso,
    TResult Function(_VerDetalleEntrevistaCargada value)?
        verDetalleEntrevistaCargada,
    TResult Function(_VerDetalleEntrevistaFallida value)?
        verDetalleEntrevistaFallida,
    required TResult orElse(),
  }) {
    if (verDetalleEntrevistaCargada != null) {
      return verDetalleEntrevistaCargada(this);
    }
    return orElse();
  }
}

abstract class _VerDetalleEntrevistaCargada
    implements ConsultarDetalleEntrevistaState {
  const factory _VerDetalleEntrevistaCargada(Entrevista entrevista) =
      _$_VerDetalleEntrevistaCargada;

  Entrevista get entrevista => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerDetalleEntrevistaCargadaCopyWith<_VerDetalleEntrevistaCargada>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerDetalleEntrevistaFallidaCopyWith<$Res> {
  factory _$VerDetalleEntrevistaFallidaCopyWith(
          _VerDetalleEntrevistaFallida value,
          $Res Function(_VerDetalleEntrevistaFallida) then) =
      __$VerDetalleEntrevistaFallidaCopyWithImpl<$Res>;
  $Res call({ContratacionExcepcion entrevistaExcepcion});

  $ContratacionExcepcionCopyWith<$Res> get entrevistaExcepcion;
}

/// @nodoc
class __$VerDetalleEntrevistaFallidaCopyWithImpl<$Res>
    extends _$ConsultarDetalleEntrevistaStateCopyWithImpl<$Res>
    implements _$VerDetalleEntrevistaFallidaCopyWith<$Res> {
  __$VerDetalleEntrevistaFallidaCopyWithImpl(
      _VerDetalleEntrevistaFallida _value,
      $Res Function(_VerDetalleEntrevistaFallida) _then)
      : super(_value, (v) => _then(v as _VerDetalleEntrevistaFallida));

  @override
  _VerDetalleEntrevistaFallida get _value =>
      super._value as _VerDetalleEntrevistaFallida;

  @override
  $Res call({
    Object? entrevistaExcepcion = freezed,
  }) {
    return _then(_VerDetalleEntrevistaFallida(
      entrevistaExcepcion == freezed
          ? _value.entrevistaExcepcion
          : entrevistaExcepcion // ignore: cast_nullable_to_non_nullable
              as ContratacionExcepcion,
    ));
  }

  @override
  $ContratacionExcepcionCopyWith<$Res> get entrevistaExcepcion {
    return $ContratacionExcepcionCopyWith<$Res>(_value.entrevistaExcepcion,
        (value) {
      return _then(_value.copyWith(entrevistaExcepcion: value));
    });
  }
}

/// @nodoc

class _$_VerDetalleEntrevistaFallida implements _VerDetalleEntrevistaFallida {
  const _$_VerDetalleEntrevistaFallida(this.entrevistaExcepcion);

  @override
  final ContratacionExcepcion entrevistaExcepcion;

  @override
  String toString() {
    return 'ConsultarDetalleEntrevistaState.verDetalleEntrevistaFallida(entrevistaExcepcion: $entrevistaExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerDetalleEntrevistaFallida &&
            (identical(other.entrevistaExcepcion, entrevistaExcepcion) ||
                const DeepCollectionEquality()
                    .equals(other.entrevistaExcepcion, entrevistaExcepcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entrevistaExcepcion);

  @JsonKey(ignore: true)
  @override
  _$VerDetalleEntrevistaFallidaCopyWith<_VerDetalleEntrevistaFallida>
      get copyWith => __$VerDetalleEntrevistaFallidaCopyWithImpl<
          _VerDetalleEntrevistaFallida>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() verDetalleEntrevistaEnProgreso,
    required TResult Function(Entrevista entrevista)
        verDetalleEntrevistaCargada,
    required TResult Function(ContratacionExcepcion entrevistaExcepcion)
        verDetalleEntrevistaFallida,
  }) {
    return verDetalleEntrevistaFallida(entrevistaExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? verDetalleEntrevistaEnProgreso,
    TResult Function(Entrevista entrevista)? verDetalleEntrevistaCargada,
    TResult Function(ContratacionExcepcion entrevistaExcepcion)?
        verDetalleEntrevistaFallida,
    required TResult orElse(),
  }) {
    if (verDetalleEntrevistaFallida != null) {
      return verDetalleEntrevistaFallida(entrevistaExcepcion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_VerDetalleEntrevistaEnProgreso value)
        verDetalleEntrevistaEnProgreso,
    required TResult Function(_VerDetalleEntrevistaCargada value)
        verDetalleEntrevistaCargada,
    required TResult Function(_VerDetalleEntrevistaFallida value)
        verDetalleEntrevistaFallida,
  }) {
    return verDetalleEntrevistaFallida(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_VerDetalleEntrevistaEnProgreso value)?
        verDetalleEntrevistaEnProgreso,
    TResult Function(_VerDetalleEntrevistaCargada value)?
        verDetalleEntrevistaCargada,
    TResult Function(_VerDetalleEntrevistaFallida value)?
        verDetalleEntrevistaFallida,
    required TResult orElse(),
  }) {
    if (verDetalleEntrevistaFallida != null) {
      return verDetalleEntrevistaFallida(this);
    }
    return orElse();
  }
}

abstract class _VerDetalleEntrevistaFallida
    implements ConsultarDetalleEntrevistaState {
  const factory _VerDetalleEntrevistaFallida(
          ContratacionExcepcion entrevistaExcepcion) =
      _$_VerDetalleEntrevistaFallida;

  ContratacionExcepcion get entrevistaExcepcion =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerDetalleEntrevistaFallidaCopyWith<_VerDetalleEntrevistaFallida>
      get copyWith => throw _privateConstructorUsedError;
}
