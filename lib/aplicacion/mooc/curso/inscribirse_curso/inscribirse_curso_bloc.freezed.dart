// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'inscribirse_curso_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InscribirseCursoEventTearOff {
  const _$InscribirseCursoEventTearOff();

  _InscripcionCursoRealizada inscripcionCursoRealizada(
      Identificador uuidCurso) {
    return _InscripcionCursoRealizada(
      uuidCurso,
    );
  }
}

/// @nodoc
const $InscribirseCursoEvent = _$InscribirseCursoEventTearOff();

/// @nodoc
mixin _$InscribirseCursoEvent {
  Identificador get uuidCurso => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidCurso)
        inscripcionCursoRealizada,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidCurso)? inscripcionCursoRealizada,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InscripcionCursoRealizada value)
        inscripcionCursoRealizada,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InscripcionCursoRealizada value)?
        inscripcionCursoRealizada,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InscribirseCursoEventCopyWith<InscribirseCursoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InscribirseCursoEventCopyWith<$Res> {
  factory $InscribirseCursoEventCopyWith(InscribirseCursoEvent value,
          $Res Function(InscribirseCursoEvent) then) =
      _$InscribirseCursoEventCopyWithImpl<$Res>;
  $Res call({Identificador uuidCurso});
}

/// @nodoc
class _$InscribirseCursoEventCopyWithImpl<$Res>
    implements $InscribirseCursoEventCopyWith<$Res> {
  _$InscribirseCursoEventCopyWithImpl(this._value, this._then);

  final InscribirseCursoEvent _value;
  // ignore: unused_field
  final $Res Function(InscribirseCursoEvent) _then;

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
abstract class _$InscripcionCursoRealizadaCopyWith<$Res>
    implements $InscribirseCursoEventCopyWith<$Res> {
  factory _$InscripcionCursoRealizadaCopyWith(_InscripcionCursoRealizada value,
          $Res Function(_InscripcionCursoRealizada) then) =
      __$InscripcionCursoRealizadaCopyWithImpl<$Res>;
  @override
  $Res call({Identificador uuidCurso});
}

/// @nodoc
class __$InscripcionCursoRealizadaCopyWithImpl<$Res>
    extends _$InscribirseCursoEventCopyWithImpl<$Res>
    implements _$InscripcionCursoRealizadaCopyWith<$Res> {
  __$InscripcionCursoRealizadaCopyWithImpl(_InscripcionCursoRealizada _value,
      $Res Function(_InscripcionCursoRealizada) _then)
      : super(_value, (v) => _then(v as _InscripcionCursoRealizada));

  @override
  _InscripcionCursoRealizada get _value =>
      super._value as _InscripcionCursoRealizada;

  @override
  $Res call({
    Object? uuidCurso = freezed,
  }) {
    return _then(_InscripcionCursoRealizada(
      uuidCurso == freezed
          ? _value.uuidCurso
          : uuidCurso // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

class _$_InscripcionCursoRealizada implements _InscripcionCursoRealizada {
  const _$_InscripcionCursoRealizada(this.uuidCurso);

  @override
  final Identificador uuidCurso;

  @override
  String toString() {
    return 'InscribirseCursoEvent.inscripcionCursoRealizada(uuidCurso: $uuidCurso)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InscripcionCursoRealizada &&
            (identical(other.uuidCurso, uuidCurso) ||
                const DeepCollectionEquality()
                    .equals(other.uuidCurso, uuidCurso)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuidCurso);

  @JsonKey(ignore: true)
  @override
  _$InscripcionCursoRealizadaCopyWith<_InscripcionCursoRealizada>
      get copyWith =>
          __$InscripcionCursoRealizadaCopyWithImpl<_InscripcionCursoRealizada>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidCurso)
        inscripcionCursoRealizada,
  }) {
    return inscripcionCursoRealizada(uuidCurso);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidCurso)? inscripcionCursoRealizada,
    required TResult orElse(),
  }) {
    if (inscripcionCursoRealizada != null) {
      return inscripcionCursoRealizada(uuidCurso);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InscripcionCursoRealizada value)
        inscripcionCursoRealizada,
  }) {
    return inscripcionCursoRealizada(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InscripcionCursoRealizada value)?
        inscripcionCursoRealizada,
    required TResult orElse(),
  }) {
    if (inscripcionCursoRealizada != null) {
      return inscripcionCursoRealizada(this);
    }
    return orElse();
  }
}

abstract class _InscripcionCursoRealizada implements InscribirseCursoEvent {
  const factory _InscripcionCursoRealizada(Identificador uuidCurso) =
      _$_InscripcionCursoRealizada;

  @override
  Identificador get uuidCurso => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InscripcionCursoRealizadaCopyWith<_InscripcionCursoRealizada>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$InscribirseCursoStateTearOff {
  const _$InscribirseCursoStateTearOff();

  _Inicial inicial() {
    return const _Inicial();
  }

  _AccionEnProgreso accionEnProgreso() {
    return const _AccionEnProgreso();
  }

  _InscripcionCursoExitosa inscripcionCursoExitosa() {
    return const _InscripcionCursoExitosa();
  }

  _FalloInscripcionCurso falloInscripcionCurso(
      MoocExcepcion inscripcionCursoExcepcion) {
    return _FalloInscripcionCurso(
      inscripcionCursoExcepcion,
    );
  }
}

/// @nodoc
const $InscribirseCursoState = _$InscribirseCursoStateTearOff();

/// @nodoc
mixin _$InscribirseCursoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() accionEnProgreso,
    required TResult Function() inscripcionCursoExitosa,
    required TResult Function(MoocExcepcion inscripcionCursoExcepcion)
        falloInscripcionCurso,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? accionEnProgreso,
    TResult Function()? inscripcionCursoExitosa,
    TResult Function(MoocExcepcion inscripcionCursoExcepcion)?
        falloInscripcionCurso,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_AccionEnProgreso value) accionEnProgreso,
    required TResult Function(_InscripcionCursoExitosa value)
        inscripcionCursoExitosa,
    required TResult Function(_FalloInscripcionCurso value)
        falloInscripcionCurso,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_AccionEnProgreso value)? accionEnProgreso,
    TResult Function(_InscripcionCursoExitosa value)? inscripcionCursoExitosa,
    TResult Function(_FalloInscripcionCurso value)? falloInscripcionCurso,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InscribirseCursoStateCopyWith<$Res> {
  factory $InscribirseCursoStateCopyWith(InscribirseCursoState value,
          $Res Function(InscribirseCursoState) then) =
      _$InscribirseCursoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InscribirseCursoStateCopyWithImpl<$Res>
    implements $InscribirseCursoStateCopyWith<$Res> {
  _$InscribirseCursoStateCopyWithImpl(this._value, this._then);

  final InscribirseCursoState _value;
  // ignore: unused_field
  final $Res Function(InscribirseCursoState) _then;
}

/// @nodoc
abstract class _$InicialCopyWith<$Res> {
  factory _$InicialCopyWith(_Inicial value, $Res Function(_Inicial) then) =
      __$InicialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InicialCopyWithImpl<$Res>
    extends _$InscribirseCursoStateCopyWithImpl<$Res>
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
    return 'InscribirseCursoState.inicial()';
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
    required TResult Function() inscripcionCursoExitosa,
    required TResult Function(MoocExcepcion inscripcionCursoExcepcion)
        falloInscripcionCurso,
  }) {
    return inicial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? accionEnProgreso,
    TResult Function()? inscripcionCursoExitosa,
    TResult Function(MoocExcepcion inscripcionCursoExcepcion)?
        falloInscripcionCurso,
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
    required TResult Function(_InscripcionCursoExitosa value)
        inscripcionCursoExitosa,
    required TResult Function(_FalloInscripcionCurso value)
        falloInscripcionCurso,
  }) {
    return inicial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_AccionEnProgreso value)? accionEnProgreso,
    TResult Function(_InscripcionCursoExitosa value)? inscripcionCursoExitosa,
    TResult Function(_FalloInscripcionCurso value)? falloInscripcionCurso,
    required TResult orElse(),
  }) {
    if (inicial != null) {
      return inicial(this);
    }
    return orElse();
  }
}

abstract class _Inicial implements InscribirseCursoState {
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
    extends _$InscribirseCursoStateCopyWithImpl<$Res>
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
    return 'InscribirseCursoState.accionEnProgreso()';
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
    required TResult Function() inscripcionCursoExitosa,
    required TResult Function(MoocExcepcion inscripcionCursoExcepcion)
        falloInscripcionCurso,
  }) {
    return accionEnProgreso();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? accionEnProgreso,
    TResult Function()? inscripcionCursoExitosa,
    TResult Function(MoocExcepcion inscripcionCursoExcepcion)?
        falloInscripcionCurso,
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
    required TResult Function(_InscripcionCursoExitosa value)
        inscripcionCursoExitosa,
    required TResult Function(_FalloInscripcionCurso value)
        falloInscripcionCurso,
  }) {
    return accionEnProgreso(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_AccionEnProgreso value)? accionEnProgreso,
    TResult Function(_InscripcionCursoExitosa value)? inscripcionCursoExitosa,
    TResult Function(_FalloInscripcionCurso value)? falloInscripcionCurso,
    required TResult orElse(),
  }) {
    if (accionEnProgreso != null) {
      return accionEnProgreso(this);
    }
    return orElse();
  }
}

abstract class _AccionEnProgreso implements InscribirseCursoState {
  const factory _AccionEnProgreso() = _$_AccionEnProgreso;
}

/// @nodoc
abstract class _$InscripcionCursoExitosaCopyWith<$Res> {
  factory _$InscripcionCursoExitosaCopyWith(_InscripcionCursoExitosa value,
          $Res Function(_InscripcionCursoExitosa) then) =
      __$InscripcionCursoExitosaCopyWithImpl<$Res>;
}

/// @nodoc
class __$InscripcionCursoExitosaCopyWithImpl<$Res>
    extends _$InscribirseCursoStateCopyWithImpl<$Res>
    implements _$InscripcionCursoExitosaCopyWith<$Res> {
  __$InscripcionCursoExitosaCopyWithImpl(_InscripcionCursoExitosa _value,
      $Res Function(_InscripcionCursoExitosa) _then)
      : super(_value, (v) => _then(v as _InscripcionCursoExitosa));

  @override
  _InscripcionCursoExitosa get _value =>
      super._value as _InscripcionCursoExitosa;
}

/// @nodoc

class _$_InscripcionCursoExitosa implements _InscripcionCursoExitosa {
  const _$_InscripcionCursoExitosa();

  @override
  String toString() {
    return 'InscribirseCursoState.inscripcionCursoExitosa()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InscripcionCursoExitosa);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() accionEnProgreso,
    required TResult Function() inscripcionCursoExitosa,
    required TResult Function(MoocExcepcion inscripcionCursoExcepcion)
        falloInscripcionCurso,
  }) {
    return inscripcionCursoExitosa();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? accionEnProgreso,
    TResult Function()? inscripcionCursoExitosa,
    TResult Function(MoocExcepcion inscripcionCursoExcepcion)?
        falloInscripcionCurso,
    required TResult orElse(),
  }) {
    if (inscripcionCursoExitosa != null) {
      return inscripcionCursoExitosa();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_AccionEnProgreso value) accionEnProgreso,
    required TResult Function(_InscripcionCursoExitosa value)
        inscripcionCursoExitosa,
    required TResult Function(_FalloInscripcionCurso value)
        falloInscripcionCurso,
  }) {
    return inscripcionCursoExitosa(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_AccionEnProgreso value)? accionEnProgreso,
    TResult Function(_InscripcionCursoExitosa value)? inscripcionCursoExitosa,
    TResult Function(_FalloInscripcionCurso value)? falloInscripcionCurso,
    required TResult orElse(),
  }) {
    if (inscripcionCursoExitosa != null) {
      return inscripcionCursoExitosa(this);
    }
    return orElse();
  }
}

abstract class _InscripcionCursoExitosa implements InscribirseCursoState {
  const factory _InscripcionCursoExitosa() = _$_InscripcionCursoExitosa;
}

/// @nodoc
abstract class _$FalloInscripcionCursoCopyWith<$Res> {
  factory _$FalloInscripcionCursoCopyWith(_FalloInscripcionCurso value,
          $Res Function(_FalloInscripcionCurso) then) =
      __$FalloInscripcionCursoCopyWithImpl<$Res>;
  $Res call({MoocExcepcion inscripcionCursoExcepcion});

  $MoocExcepcionCopyWith<$Res> get inscripcionCursoExcepcion;
}

/// @nodoc
class __$FalloInscripcionCursoCopyWithImpl<$Res>
    extends _$InscribirseCursoStateCopyWithImpl<$Res>
    implements _$FalloInscripcionCursoCopyWith<$Res> {
  __$FalloInscripcionCursoCopyWithImpl(_FalloInscripcionCurso _value,
      $Res Function(_FalloInscripcionCurso) _then)
      : super(_value, (v) => _then(v as _FalloInscripcionCurso));

  @override
  _FalloInscripcionCurso get _value => super._value as _FalloInscripcionCurso;

  @override
  $Res call({
    Object? inscripcionCursoExcepcion = freezed,
  }) {
    return _then(_FalloInscripcionCurso(
      inscripcionCursoExcepcion == freezed
          ? _value.inscripcionCursoExcepcion
          : inscripcionCursoExcepcion // ignore: cast_nullable_to_non_nullable
              as MoocExcepcion,
    ));
  }

  @override
  $MoocExcepcionCopyWith<$Res> get inscripcionCursoExcepcion {
    return $MoocExcepcionCopyWith<$Res>(_value.inscripcionCursoExcepcion,
        (value) {
      return _then(_value.copyWith(inscripcionCursoExcepcion: value));
    });
  }
}

/// @nodoc

class _$_FalloInscripcionCurso implements _FalloInscripcionCurso {
  const _$_FalloInscripcionCurso(this.inscripcionCursoExcepcion);

  @override
  final MoocExcepcion inscripcionCursoExcepcion;

  @override
  String toString() {
    return 'InscribirseCursoState.falloInscripcionCurso(inscripcionCursoExcepcion: $inscripcionCursoExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FalloInscripcionCurso &&
            (identical(other.inscripcionCursoExcepcion,
                    inscripcionCursoExcepcion) ||
                const DeepCollectionEquality().equals(
                    other.inscripcionCursoExcepcion,
                    inscripcionCursoExcepcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(inscripcionCursoExcepcion);

  @JsonKey(ignore: true)
  @override
  _$FalloInscripcionCursoCopyWith<_FalloInscripcionCurso> get copyWith =>
      __$FalloInscripcionCursoCopyWithImpl<_FalloInscripcionCurso>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() accionEnProgreso,
    required TResult Function() inscripcionCursoExitosa,
    required TResult Function(MoocExcepcion inscripcionCursoExcepcion)
        falloInscripcionCurso,
  }) {
    return falloInscripcionCurso(inscripcionCursoExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? accionEnProgreso,
    TResult Function()? inscripcionCursoExitosa,
    TResult Function(MoocExcepcion inscripcionCursoExcepcion)?
        falloInscripcionCurso,
    required TResult orElse(),
  }) {
    if (falloInscripcionCurso != null) {
      return falloInscripcionCurso(inscripcionCursoExcepcion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inicial value) inicial,
    required TResult Function(_AccionEnProgreso value) accionEnProgreso,
    required TResult Function(_InscripcionCursoExitosa value)
        inscripcionCursoExitosa,
    required TResult Function(_FalloInscripcionCurso value)
        falloInscripcionCurso,
  }) {
    return falloInscripcionCurso(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inicial value)? inicial,
    TResult Function(_AccionEnProgreso value)? accionEnProgreso,
    TResult Function(_InscripcionCursoExitosa value)? inscripcionCursoExitosa,
    TResult Function(_FalloInscripcionCurso value)? falloInscripcionCurso,
    required TResult orElse(),
  }) {
    if (falloInscripcionCurso != null) {
      return falloInscripcionCurso(this);
    }
    return orElse();
  }
}

abstract class _FalloInscripcionCurso implements InscribirseCursoState {
  const factory _FalloInscripcionCurso(
      MoocExcepcion inscripcionCursoExcepcion) = _$_FalloInscripcionCurso;

  MoocExcepcion get inscripcionCursoExcepcion =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FalloInscripcionCursoCopyWith<_FalloInscripcionCurso> get copyWith =>
      throw _privateConstructorUsedError;
}
