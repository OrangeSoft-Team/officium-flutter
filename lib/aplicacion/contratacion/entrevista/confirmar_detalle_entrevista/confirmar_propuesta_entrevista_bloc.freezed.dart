// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'confirmar_propuesta_entrevista_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConfirmarPropuestaEntrevistaEventTearOff {
  const _$ConfirmarPropuestaEntrevistaEventTearOff();

  _EntrevistaConfirmada entrevistaConfirmada(
      Identificador uuidPostulacionOfertaLabioral) {
    return _EntrevistaConfirmada(
      uuidPostulacionOfertaLabioral,
    );
  }
}

/// @nodoc
const $ConfirmarPropuestaEntrevistaEvent =
    _$ConfirmarPropuestaEntrevistaEventTearOff();

/// @nodoc
mixin _$ConfirmarPropuestaEntrevistaEvent {
  Identificador get uuidPostulacionOfertaLabioral =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidPostulacionOfertaLabioral)
        entrevistaConfirmada,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidPostulacionOfertaLabioral)?
        entrevistaConfirmada,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EntrevistaConfirmada value) entrevistaConfirmada,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EntrevistaConfirmada value)? entrevistaConfirmada,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmarPropuestaEntrevistaEventCopyWith<ConfirmarPropuestaEntrevistaEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmarPropuestaEntrevistaEventCopyWith<$Res> {
  factory $ConfirmarPropuestaEntrevistaEventCopyWith(
          ConfirmarPropuestaEntrevistaEvent value,
          $Res Function(ConfirmarPropuestaEntrevistaEvent) then) =
      _$ConfirmarPropuestaEntrevistaEventCopyWithImpl<$Res>;
  $Res call({Identificador uuidPostulacionOfertaLabioral});
}

/// @nodoc
class _$ConfirmarPropuestaEntrevistaEventCopyWithImpl<$Res>
    implements $ConfirmarPropuestaEntrevistaEventCopyWith<$Res> {
  _$ConfirmarPropuestaEntrevistaEventCopyWithImpl(this._value, this._then);

  final ConfirmarPropuestaEntrevistaEvent _value;
  // ignore: unused_field
  final $Res Function(ConfirmarPropuestaEntrevistaEvent) _then;

  @override
  $Res call({
    Object? uuidPostulacionOfertaLabioral = freezed,
  }) {
    return _then(_value.copyWith(
      uuidPostulacionOfertaLabioral: uuidPostulacionOfertaLabioral == freezed
          ? _value.uuidPostulacionOfertaLabioral
          : uuidPostulacionOfertaLabioral // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc
abstract class _$EntrevistaConfirmadaCopyWith<$Res>
    implements $ConfirmarPropuestaEntrevistaEventCopyWith<$Res> {
  factory _$EntrevistaConfirmadaCopyWith(_EntrevistaConfirmada value,
          $Res Function(_EntrevistaConfirmada) then) =
      __$EntrevistaConfirmadaCopyWithImpl<$Res>;
  @override
  $Res call({Identificador uuidPostulacionOfertaLabioral});
}

/// @nodoc
class __$EntrevistaConfirmadaCopyWithImpl<$Res>
    extends _$ConfirmarPropuestaEntrevistaEventCopyWithImpl<$Res>
    implements _$EntrevistaConfirmadaCopyWith<$Res> {
  __$EntrevistaConfirmadaCopyWithImpl(
      _EntrevistaConfirmada _value, $Res Function(_EntrevistaConfirmada) _then)
      : super(_value, (v) => _then(v as _EntrevistaConfirmada));

  @override
  _EntrevistaConfirmada get _value => super._value as _EntrevistaConfirmada;

  @override
  $Res call({
    Object? uuidPostulacionOfertaLabioral = freezed,
  }) {
    return _then(_EntrevistaConfirmada(
      uuidPostulacionOfertaLabioral == freezed
          ? _value.uuidPostulacionOfertaLabioral
          : uuidPostulacionOfertaLabioral // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

class _$_EntrevistaConfirmada implements _EntrevistaConfirmada {
  const _$_EntrevistaConfirmada(this.uuidPostulacionOfertaLabioral);

  @override
  final Identificador uuidPostulacionOfertaLabioral;

  @override
  String toString() {
    return 'ConfirmarPropuestaEntrevistaEvent.entrevistaConfirmada(uuidPostulacionOfertaLabioral: $uuidPostulacionOfertaLabioral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EntrevistaConfirmada &&
            (identical(other.uuidPostulacionOfertaLabioral,
                    uuidPostulacionOfertaLabioral) ||
                const DeepCollectionEquality().equals(
                    other.uuidPostulacionOfertaLabioral,
                    uuidPostulacionOfertaLabioral)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuidPostulacionOfertaLabioral);

  @JsonKey(ignore: true)
  @override
  _$EntrevistaConfirmadaCopyWith<_EntrevistaConfirmada> get copyWith =>
      __$EntrevistaConfirmadaCopyWithImpl<_EntrevistaConfirmada>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidPostulacionOfertaLabioral)
        entrevistaConfirmada,
  }) {
    return entrevistaConfirmada(uuidPostulacionOfertaLabioral);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidPostulacionOfertaLabioral)?
        entrevistaConfirmada,
    required TResult orElse(),
  }) {
    if (entrevistaConfirmada != null) {
      return entrevistaConfirmada(uuidPostulacionOfertaLabioral);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EntrevistaConfirmada value) entrevistaConfirmada,
  }) {
    return entrevistaConfirmada(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EntrevistaConfirmada value)? entrevistaConfirmada,
    required TResult orElse(),
  }) {
    if (entrevistaConfirmada != null) {
      return entrevistaConfirmada(this);
    }
    return orElse();
  }
}

abstract class _EntrevistaConfirmada
    implements ConfirmarPropuestaEntrevistaEvent {
  const factory _EntrevistaConfirmada(
      Identificador uuidPostulacionOfertaLabioral) = _$_EntrevistaConfirmada;

  @override
  Identificador get uuidPostulacionOfertaLabioral =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EntrevistaConfirmadaCopyWith<_EntrevistaConfirmada> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConfirmarPropuestaEntrevistaStateTearOff {
  const _$ConfirmarPropuestaEntrevistaStateTearOff();

  _Inicial inicial() {
    return const _Inicial();
  }

  _AccionEnProgreso accionEnProgreso() {
    return const _AccionEnProgreso();
  }

  _CanceladaExitosa confirmadaExitosa() {
    return const _CanceladaExitosa();
  }

  _FalloConfirmarPropuestaEntrevista falloConfirmarPropuestaEntrevista(
      ContratacionExcepcion contratacionExcepcion) {
    return _FalloConfirmarPropuestaEntrevista(
      contratacionExcepcion,
    );
  }
}

/// @nodoc
const $ConfirmarPropuestaEntrevistaState =
    _$ConfirmarPropuestaEntrevistaStateTearOff();

/// @nodoc
mixin _$ConfirmarPropuestaEntrevistaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() accionEnProgreso,
    required TResult Function() confirmadaExitosa,
    required TResult Function(ContratacionExcepcion contratacionExcepcion)
        falloConfirmarPropuestaEntrevista,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? accionEnProgreso,
    TResult Function()? confirmadaExitosa,
    TResult Function(ContratacionExcepcion contratacionExcepcion)?
        falloConfirmarPropuestaEntrevista,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_AccionEnProgreso value) accionEnProgreso,
    required TResult Function(_CanceladaExitosa value) confirmadaExitosa,
    required TResult Function(_FalloConfirmarPropuestaEntrevista value)
        falloConfirmarPropuestaEntrevista,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_AccionEnProgreso value)? accionEnProgreso,
    TResult Function(_CanceladaExitosa value)? confirmadaExitosa,
    TResult Function(_FalloConfirmarPropuestaEntrevista value)?
        falloConfirmarPropuestaEntrevista,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmarPropuestaEntrevistaStateCopyWith<$Res> {
  factory $ConfirmarPropuestaEntrevistaStateCopyWith(
          ConfirmarPropuestaEntrevistaState value,
          $Res Function(ConfirmarPropuestaEntrevistaState) then) =
      _$ConfirmarPropuestaEntrevistaStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmarPropuestaEntrevistaStateCopyWithImpl<$Res>
    implements $ConfirmarPropuestaEntrevistaStateCopyWith<$Res> {
  _$ConfirmarPropuestaEntrevistaStateCopyWithImpl(this._value, this._then);

  final ConfirmarPropuestaEntrevistaState _value;
  // ignore: unused_field
  final $Res Function(ConfirmarPropuestaEntrevistaState) _then;
}

/// @nodoc
abstract class _$InicialCopyWith<$Res> {
  factory _$InicialCopyWith(_Inicial value, $Res Function(_Inicial) then) =
      __$InicialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InicialCopyWithImpl<$Res>
    extends _$ConfirmarPropuestaEntrevistaStateCopyWithImpl<$Res>
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
    return 'ConfirmarPropuestaEntrevistaState.inicial()';
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
    required TResult Function() accionEnProgreso,
    required TResult Function() confirmadaExitosa,
    required TResult Function(ContratacionExcepcion contratacionExcepcion)
        falloConfirmarPropuestaEntrevista,
  }) {
    return inicial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? accionEnProgreso,
    TResult Function()? confirmadaExitosa,
    TResult Function(ContratacionExcepcion contratacionExcepcion)?
        falloConfirmarPropuestaEntrevista,
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
    required TResult Function(_AccionEnProgreso value) accionEnProgreso,
    required TResult Function(_CanceladaExitosa value) confirmadaExitosa,
    required TResult Function(_FalloConfirmarPropuestaEntrevista value)
        falloConfirmarPropuestaEntrevista,
  }) {
    return inicial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_AccionEnProgreso value)? accionEnProgreso,
    TResult Function(_CanceladaExitosa value)? confirmadaExitosa,
    TResult Function(_FalloConfirmarPropuestaEntrevista value)?
        falloConfirmarPropuestaEntrevista,
    required TResult orElse(),
  }) {
    if (inicial != null) {
      return inicial(this);
    }
    return orElse();
  }
}

abstract class _Inicial implements ConfirmarPropuestaEntrevistaState {
  const factory _Inicial() = _$_Inicial;
}

/// @nodoc
abstract class _$AccionEnProgresoCopyWith<$Res> {
  factory _$AccionEnProgresoCopyWith(
          _AccionEnProgreso value, $Res Function(_AccionEnProgreso) then) =
      __$AccionEnProgresoCopyWithImpl<$Res>;
}

/// @nodoc
class __$AccionEnProgresoCopyWithImpl<$Res>
    extends _$ConfirmarPropuestaEntrevistaStateCopyWithImpl<$Res>
    implements _$AccionEnProgresoCopyWith<$Res> {
  __$AccionEnProgresoCopyWithImpl(
      _AccionEnProgreso _value, $Res Function(_AccionEnProgreso) _then)
      : super(_value, (v) => _then(v as _AccionEnProgreso));

  @override
  _AccionEnProgreso get _value => super._value as _AccionEnProgreso;
}

/// @nodoc

class _$_AccionEnProgreso implements _AccionEnProgreso {
  const _$_AccionEnProgreso();

  @override
  String toString() {
    return 'ConfirmarPropuestaEntrevistaState.accionEnProgreso()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AccionEnProgreso);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() accionEnProgreso,
    required TResult Function() confirmadaExitosa,
    required TResult Function(ContratacionExcepcion contratacionExcepcion)
        falloConfirmarPropuestaEntrevista,
  }) {
    return accionEnProgreso();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? accionEnProgreso,
    TResult Function()? confirmadaExitosa,
    TResult Function(ContratacionExcepcion contratacionExcepcion)?
        falloConfirmarPropuestaEntrevista,
    required TResult orElse(),
  }) {
    if (accionEnProgreso != null) {
      return accionEnProgreso();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_AccionEnProgreso value) accionEnProgreso,
    required TResult Function(_CanceladaExitosa value) confirmadaExitosa,
    required TResult Function(_FalloConfirmarPropuestaEntrevista value)
        falloConfirmarPropuestaEntrevista,
  }) {
    return accionEnProgreso(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_AccionEnProgreso value)? accionEnProgreso,
    TResult Function(_CanceladaExitosa value)? confirmadaExitosa,
    TResult Function(_FalloConfirmarPropuestaEntrevista value)?
        falloConfirmarPropuestaEntrevista,
    required TResult orElse(),
  }) {
    if (accionEnProgreso != null) {
      return accionEnProgreso(this);
    }
    return orElse();
  }
}

abstract class _AccionEnProgreso implements ConfirmarPropuestaEntrevistaState {
  const factory _AccionEnProgreso() = _$_AccionEnProgreso;
}

/// @nodoc
abstract class _$CanceladaExitosaCopyWith<$Res> {
  factory _$CanceladaExitosaCopyWith(
          _CanceladaExitosa value, $Res Function(_CanceladaExitosa) then) =
      __$CanceladaExitosaCopyWithImpl<$Res>;
}

/// @nodoc
class __$CanceladaExitosaCopyWithImpl<$Res>
    extends _$ConfirmarPropuestaEntrevistaStateCopyWithImpl<$Res>
    implements _$CanceladaExitosaCopyWith<$Res> {
  __$CanceladaExitosaCopyWithImpl(
      _CanceladaExitosa _value, $Res Function(_CanceladaExitosa) _then)
      : super(_value, (v) => _then(v as _CanceladaExitosa));

  @override
  _CanceladaExitosa get _value => super._value as _CanceladaExitosa;
}

/// @nodoc

class _$_CanceladaExitosa implements _CanceladaExitosa {
  const _$_CanceladaExitosa();

  @override
  String toString() {
    return 'ConfirmarPropuestaEntrevistaState.confirmadaExitosa()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CanceladaExitosa);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() accionEnProgreso,
    required TResult Function() confirmadaExitosa,
    required TResult Function(ContratacionExcepcion contratacionExcepcion)
        falloConfirmarPropuestaEntrevista,
  }) {
    return confirmadaExitosa();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? accionEnProgreso,
    TResult Function()? confirmadaExitosa,
    TResult Function(ContratacionExcepcion contratacionExcepcion)?
        falloConfirmarPropuestaEntrevista,
    required TResult orElse(),
  }) {
    if (confirmadaExitosa != null) {
      return confirmadaExitosa();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_AccionEnProgreso value) accionEnProgreso,
    required TResult Function(_CanceladaExitosa value) confirmadaExitosa,
    required TResult Function(_FalloConfirmarPropuestaEntrevista value)
        falloConfirmarPropuestaEntrevista,
  }) {
    return confirmadaExitosa(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_AccionEnProgreso value)? accionEnProgreso,
    TResult Function(_CanceladaExitosa value)? confirmadaExitosa,
    TResult Function(_FalloConfirmarPropuestaEntrevista value)?
        falloConfirmarPropuestaEntrevista,
    required TResult orElse(),
  }) {
    if (confirmadaExitosa != null) {
      return confirmadaExitosa(this);
    }
    return orElse();
  }
}

abstract class _CanceladaExitosa implements ConfirmarPropuestaEntrevistaState {
  const factory _CanceladaExitosa() = _$_CanceladaExitosa;
}

/// @nodoc
abstract class _$FalloConfirmarPropuestaEntrevistaCopyWith<$Res> {
  factory _$FalloConfirmarPropuestaEntrevistaCopyWith(
          _FalloConfirmarPropuestaEntrevista value,
          $Res Function(_FalloConfirmarPropuestaEntrevista) then) =
      __$FalloConfirmarPropuestaEntrevistaCopyWithImpl<$Res>;
  $Res call({ContratacionExcepcion contratacionExcepcion});

  $ContratacionExcepcionCopyWith<$Res> get contratacionExcepcion;
}

/// @nodoc
class __$FalloConfirmarPropuestaEntrevistaCopyWithImpl<$Res>
    extends _$ConfirmarPropuestaEntrevistaStateCopyWithImpl<$Res>
    implements _$FalloConfirmarPropuestaEntrevistaCopyWith<$Res> {
  __$FalloConfirmarPropuestaEntrevistaCopyWithImpl(
      _FalloConfirmarPropuestaEntrevista _value,
      $Res Function(_FalloConfirmarPropuestaEntrevista) _then)
      : super(_value, (v) => _then(v as _FalloConfirmarPropuestaEntrevista));

  @override
  _FalloConfirmarPropuestaEntrevista get _value =>
      super._value as _FalloConfirmarPropuestaEntrevista;

  @override
  $Res call({
    Object? contratacionExcepcion = freezed,
  }) {
    return _then(_FalloConfirmarPropuestaEntrevista(
      contratacionExcepcion == freezed
          ? _value.contratacionExcepcion
          : contratacionExcepcion // ignore: cast_nullable_to_non_nullable
              as ContratacionExcepcion,
    ));
  }

  @override
  $ContratacionExcepcionCopyWith<$Res> get contratacionExcepcion {
    return $ContratacionExcepcionCopyWith<$Res>(_value.contratacionExcepcion,
        (value) {
      return _then(_value.copyWith(contratacionExcepcion: value));
    });
  }
}

/// @nodoc

class _$_FalloConfirmarPropuestaEntrevista
    implements _FalloConfirmarPropuestaEntrevista {
  const _$_FalloConfirmarPropuestaEntrevista(this.contratacionExcepcion);

  @override
  final ContratacionExcepcion contratacionExcepcion;

  @override
  String toString() {
    return 'ConfirmarPropuestaEntrevistaState.falloConfirmarPropuestaEntrevista(contratacionExcepcion: $contratacionExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FalloConfirmarPropuestaEntrevista &&
            (identical(other.contratacionExcepcion, contratacionExcepcion) ||
                const DeepCollectionEquality().equals(
                    other.contratacionExcepcion, contratacionExcepcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contratacionExcepcion);

  @JsonKey(ignore: true)
  @override
  _$FalloConfirmarPropuestaEntrevistaCopyWith<
          _FalloConfirmarPropuestaEntrevista>
      get copyWith => __$FalloConfirmarPropuestaEntrevistaCopyWithImpl<
          _FalloConfirmarPropuestaEntrevista>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() accionEnProgreso,
    required TResult Function() confirmadaExitosa,
    required TResult Function(ContratacionExcepcion contratacionExcepcion)
        falloConfirmarPropuestaEntrevista,
  }) {
    return falloConfirmarPropuestaEntrevista(contratacionExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? accionEnProgreso,
    TResult Function()? confirmadaExitosa,
    TResult Function(ContratacionExcepcion contratacionExcepcion)?
        falloConfirmarPropuestaEntrevista,
    required TResult orElse(),
  }) {
    if (falloConfirmarPropuestaEntrevista != null) {
      return falloConfirmarPropuestaEntrevista(contratacionExcepcion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_AccionEnProgreso value) accionEnProgreso,
    required TResult Function(_CanceladaExitosa value) confirmadaExitosa,
    required TResult Function(_FalloConfirmarPropuestaEntrevista value)
        falloConfirmarPropuestaEntrevista,
  }) {
    return falloConfirmarPropuestaEntrevista(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_AccionEnProgreso value)? accionEnProgreso,
    TResult Function(_CanceladaExitosa value)? confirmadaExitosa,
    TResult Function(_FalloConfirmarPropuestaEntrevista value)?
        falloConfirmarPropuestaEntrevista,
    required TResult orElse(),
  }) {
    if (falloConfirmarPropuestaEntrevista != null) {
      return falloConfirmarPropuestaEntrevista(this);
    }
    return orElse();
  }
}

abstract class _FalloConfirmarPropuestaEntrevista
    implements ConfirmarPropuestaEntrevistaState {
  const factory _FalloConfirmarPropuestaEntrevista(
          ContratacionExcepcion contratacionExcepcion) =
      _$_FalloConfirmarPropuestaEntrevista;

  ContratacionExcepcion get contratacionExcepcion =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FalloConfirmarPropuestaEntrevistaCopyWith<
          _FalloConfirmarPropuestaEntrevista>
      get copyWith => throw _privateConstructorUsedError;
}
