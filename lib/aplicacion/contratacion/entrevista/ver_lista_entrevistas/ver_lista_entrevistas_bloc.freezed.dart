// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ver_lista_entrevistas_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerListaEntrevistasEventTearOff {
  const _$VerListaEntrevistasEventTearOff();

  _VerTodasLasEntrevistasEmpezado verTodasLasEntrevistasEmpezado(
      Identificador uuidEmpleado) {
    return _VerTodasLasEntrevistasEmpezado(
      uuidEmpleado,
    );
  }

  _EntrevistasRecibidas entrevistasRecibidas(
      Either<ContratacionExcepcion, List<Entrevista>> entrevistasOExcepcion) {
    return _EntrevistasRecibidas(
      entrevistasOExcepcion,
    );
  }
}

/// @nodoc
const $VerListaEntrevistasEvent = _$VerListaEntrevistasEventTearOff();

/// @nodoc
mixin _$VerListaEntrevistasEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodasLasEntrevistasEmpezado,
    required TResult Function(
            Either<ContratacionExcepcion, List<Entrevista>>
                entrevistasOExcepcion)
        entrevistasRecibidas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)?
        verTodasLasEntrevistasEmpezado,
    TResult Function(
            Either<ContratacionExcepcion, List<Entrevista>>
                entrevistasOExcepcion)?
        entrevistasRecibidas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodasLasEntrevistasEmpezado value)
        verTodasLasEntrevistasEmpezado,
    required TResult Function(_EntrevistasRecibidas value) entrevistasRecibidas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodasLasEntrevistasEmpezado value)?
        verTodasLasEntrevistasEmpezado,
    TResult Function(_EntrevistasRecibidas value)? entrevistasRecibidas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerListaEntrevistasEventCopyWith<$Res> {
  factory $VerListaEntrevistasEventCopyWith(VerListaEntrevistasEvent value,
          $Res Function(VerListaEntrevistasEvent) then) =
      _$VerListaEntrevistasEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerListaEntrevistasEventCopyWithImpl<$Res>
    implements $VerListaEntrevistasEventCopyWith<$Res> {
  _$VerListaEntrevistasEventCopyWithImpl(this._value, this._then);

  final VerListaEntrevistasEvent _value;
  // ignore: unused_field
  final $Res Function(VerListaEntrevistasEvent) _then;
}

/// @nodoc
abstract class _$VerTodasLasEntrevistasEmpezadoCopyWith<$Res> {
  factory _$VerTodasLasEntrevistasEmpezadoCopyWith(
          _VerTodasLasEntrevistasEmpezado value,
          $Res Function(_VerTodasLasEntrevistasEmpezado) then) =
      __$VerTodasLasEntrevistasEmpezadoCopyWithImpl<$Res>;
  $Res call({Identificador uuidEmpleado});
}

/// @nodoc
class __$VerTodasLasEntrevistasEmpezadoCopyWithImpl<$Res>
    extends _$VerListaEntrevistasEventCopyWithImpl<$Res>
    implements _$VerTodasLasEntrevistasEmpezadoCopyWith<$Res> {
  __$VerTodasLasEntrevistasEmpezadoCopyWithImpl(
      _VerTodasLasEntrevistasEmpezado _value,
      $Res Function(_VerTodasLasEntrevistasEmpezado) _then)
      : super(_value, (v) => _then(v as _VerTodasLasEntrevistasEmpezado));

  @override
  _VerTodasLasEntrevistasEmpezado get _value =>
      super._value as _VerTodasLasEntrevistasEmpezado;

  @override
  $Res call({
    Object? uuidEmpleado = freezed,
  }) {
    return _then(_VerTodasLasEntrevistasEmpezado(
      uuidEmpleado == freezed
          ? _value.uuidEmpleado
          : uuidEmpleado // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

class _$_VerTodasLasEntrevistasEmpezado
    implements _VerTodasLasEntrevistasEmpezado {
  const _$_VerTodasLasEntrevistasEmpezado(this.uuidEmpleado);

  @override
  final Identificador uuidEmpleado;

  @override
  String toString() {
    return 'VerListaEntrevistasEvent.verTodasLasEntrevistasEmpezado(uuidEmpleado: $uuidEmpleado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerTodasLasEntrevistasEmpezado &&
            (identical(other.uuidEmpleado, uuidEmpleado) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEmpleado, uuidEmpleado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuidEmpleado);

  @JsonKey(ignore: true)
  @override
  _$VerTodasLasEntrevistasEmpezadoCopyWith<_VerTodasLasEntrevistasEmpezado>
      get copyWith => __$VerTodasLasEntrevistasEmpezadoCopyWithImpl<
          _VerTodasLasEntrevistasEmpezado>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodasLasEntrevistasEmpezado,
    required TResult Function(
            Either<ContratacionExcepcion, List<Entrevista>>
                entrevistasOExcepcion)
        entrevistasRecibidas,
  }) {
    return verTodasLasEntrevistasEmpezado(uuidEmpleado);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)?
        verTodasLasEntrevistasEmpezado,
    TResult Function(
            Either<ContratacionExcepcion, List<Entrevista>>
                entrevistasOExcepcion)?
        entrevistasRecibidas,
    required TResult orElse(),
  }) {
    if (verTodasLasEntrevistasEmpezado != null) {
      return verTodasLasEntrevistasEmpezado(uuidEmpleado);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodasLasEntrevistasEmpezado value)
        verTodasLasEntrevistasEmpezado,
    required TResult Function(_EntrevistasRecibidas value) entrevistasRecibidas,
  }) {
    return verTodasLasEntrevistasEmpezado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodasLasEntrevistasEmpezado value)?
        verTodasLasEntrevistasEmpezado,
    TResult Function(_EntrevistasRecibidas value)? entrevistasRecibidas,
    required TResult orElse(),
  }) {
    if (verTodasLasEntrevistasEmpezado != null) {
      return verTodasLasEntrevistasEmpezado(this);
    }
    return orElse();
  }
}

abstract class _VerTodasLasEntrevistasEmpezado
    implements VerListaEntrevistasEvent {
  const factory _VerTodasLasEntrevistasEmpezado(Identificador uuidEmpleado) =
      _$_VerTodasLasEntrevistasEmpezado;

  Identificador get uuidEmpleado => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerTodasLasEntrevistasEmpezadoCopyWith<_VerTodasLasEntrevistasEmpezado>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EntrevistasRecibidasCopyWith<$Res> {
  factory _$EntrevistasRecibidasCopyWith(_EntrevistasRecibidas value,
          $Res Function(_EntrevistasRecibidas) then) =
      __$EntrevistasRecibidasCopyWithImpl<$Res>;
  $Res call(
      {Either<ContratacionExcepcion, List<Entrevista>> entrevistasOExcepcion});
}

/// @nodoc
class __$EntrevistasRecibidasCopyWithImpl<$Res>
    extends _$VerListaEntrevistasEventCopyWithImpl<$Res>
    implements _$EntrevistasRecibidasCopyWith<$Res> {
  __$EntrevistasRecibidasCopyWithImpl(
      _EntrevistasRecibidas _value, $Res Function(_EntrevistasRecibidas) _then)
      : super(_value, (v) => _then(v as _EntrevistasRecibidas));

  @override
  _EntrevistasRecibidas get _value => super._value as _EntrevistasRecibidas;

  @override
  $Res call({
    Object? entrevistasOExcepcion = freezed,
  }) {
    return _then(_EntrevistasRecibidas(
      entrevistasOExcepcion == freezed
          ? _value.entrevistasOExcepcion
          : entrevistasOExcepcion // ignore: cast_nullable_to_non_nullable
              as Either<ContratacionExcepcion, List<Entrevista>>,
    ));
  }
}

/// @nodoc

class _$_EntrevistasRecibidas implements _EntrevistasRecibidas {
  const _$_EntrevistasRecibidas(this.entrevistasOExcepcion);

  @override
  final Either<ContratacionExcepcion, List<Entrevista>> entrevistasOExcepcion;

  @override
  String toString() {
    return 'VerListaEntrevistasEvent.entrevistasRecibidas(entrevistasOExcepcion: $entrevistasOExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EntrevistasRecibidas &&
            (identical(other.entrevistasOExcepcion, entrevistasOExcepcion) ||
                const DeepCollectionEquality().equals(
                    other.entrevistasOExcepcion, entrevistasOExcepcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entrevistasOExcepcion);

  @JsonKey(ignore: true)
  @override
  _$EntrevistasRecibidasCopyWith<_EntrevistasRecibidas> get copyWith =>
      __$EntrevistasRecibidasCopyWithImpl<_EntrevistasRecibidas>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodasLasEntrevistasEmpezado,
    required TResult Function(
            Either<ContratacionExcepcion, List<Entrevista>>
                entrevistasOExcepcion)
        entrevistasRecibidas,
  }) {
    return entrevistasRecibidas(entrevistasOExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)?
        verTodasLasEntrevistasEmpezado,
    TResult Function(
            Either<ContratacionExcepcion, List<Entrevista>>
                entrevistasOExcepcion)?
        entrevistasRecibidas,
    required TResult orElse(),
  }) {
    if (entrevistasRecibidas != null) {
      return entrevistasRecibidas(entrevistasOExcepcion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodasLasEntrevistasEmpezado value)
        verTodasLasEntrevistasEmpezado,
    required TResult Function(_EntrevistasRecibidas value) entrevistasRecibidas,
  }) {
    return entrevistasRecibidas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodasLasEntrevistasEmpezado value)?
        verTodasLasEntrevistasEmpezado,
    TResult Function(_EntrevistasRecibidas value)? entrevistasRecibidas,
    required TResult orElse(),
  }) {
    if (entrevistasRecibidas != null) {
      return entrevistasRecibidas(this);
    }
    return orElse();
  }
}

abstract class _EntrevistasRecibidas implements VerListaEntrevistasEvent {
  const factory _EntrevistasRecibidas(
      Either<ContratacionExcepcion, List<Entrevista>>
          entrevistasOExcepcion) = _$_EntrevistasRecibidas;

  Either<ContratacionExcepcion, List<Entrevista>> get entrevistasOExcepcion =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EntrevistasRecibidasCopyWith<_EntrevistasRecibidas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VerListaEntrevistasStateTearOff {
  const _$VerListaEntrevistasStateTearOff();

  _Inicial inicial() {
    return const _Inicial();
  }

  _CargaEnProgreso cargaEnProgreso() {
    return const _CargaEnProgreso();
  }

  _CargaExitosa cargaExitosa(List<Entrevista> entrevistas) {
    return _CargaExitosa(
      entrevistas,
    );
  }

  _CargaFallida cargaFallida(ContratacionExcepcion entrevistaFallidaExcepcion) {
    return _CargaFallida(
      entrevistaFallidaExcepcion,
    );
  }
}

/// @nodoc
const $VerListaEntrevistasState = _$VerListaEntrevistasStateTearOff();

/// @nodoc
mixin _$VerListaEntrevistasState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<Entrevista> entrevistas) cargaExitosa,
    required TResult Function(ContratacionExcepcion entrevistaFallidaExcepcion)
        cargaFallida,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<Entrevista> entrevistas)? cargaExitosa,
    TResult Function(ContratacionExcepcion entrevistaFallidaExcepcion)?
        cargaFallida,
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
abstract class $VerListaEntrevistasStateCopyWith<$Res> {
  factory $VerListaEntrevistasStateCopyWith(VerListaEntrevistasState value,
          $Res Function(VerListaEntrevistasState) then) =
      _$VerListaEntrevistasStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerListaEntrevistasStateCopyWithImpl<$Res>
    implements $VerListaEntrevistasStateCopyWith<$Res> {
  _$VerListaEntrevistasStateCopyWithImpl(this._value, this._then);

  final VerListaEntrevistasState _value;
  // ignore: unused_field
  final $Res Function(VerListaEntrevistasState) _then;
}

/// @nodoc
abstract class _$InicialCopyWith<$Res> {
  factory _$InicialCopyWith(_Inicial value, $Res Function(_Inicial) then) =
      __$InicialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InicialCopyWithImpl<$Res>
    extends _$VerListaEntrevistasStateCopyWithImpl<$Res>
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
    return 'VerListaEntrevistasState.inicial()';
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
    required TResult Function(List<Entrevista> entrevistas) cargaExitosa,
    required TResult Function(ContratacionExcepcion entrevistaFallidaExcepcion)
        cargaFallida,
  }) {
    return inicial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<Entrevista> entrevistas)? cargaExitosa,
    TResult Function(ContratacionExcepcion entrevistaFallidaExcepcion)?
        cargaFallida,
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

abstract class _Inicial implements VerListaEntrevistasState {
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
    extends _$VerListaEntrevistasStateCopyWithImpl<$Res>
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
    return 'VerListaEntrevistasState.cargaEnProgreso()';
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
    required TResult Function(List<Entrevista> entrevistas) cargaExitosa,
    required TResult Function(ContratacionExcepcion entrevistaFallidaExcepcion)
        cargaFallida,
  }) {
    return cargaEnProgreso();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<Entrevista> entrevistas)? cargaExitosa,
    TResult Function(ContratacionExcepcion entrevistaFallidaExcepcion)?
        cargaFallida,
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

abstract class _CargaEnProgreso implements VerListaEntrevistasState {
  const factory _CargaEnProgreso() = _$_CargaEnProgreso;
}

/// @nodoc
abstract class _$CargaExitosaCopyWith<$Res> {
  factory _$CargaExitosaCopyWith(
          _CargaExitosa value, $Res Function(_CargaExitosa) then) =
      __$CargaExitosaCopyWithImpl<$Res>;
  $Res call({List<Entrevista> entrevistas});
}

/// @nodoc
class __$CargaExitosaCopyWithImpl<$Res>
    extends _$VerListaEntrevistasStateCopyWithImpl<$Res>
    implements _$CargaExitosaCopyWith<$Res> {
  __$CargaExitosaCopyWithImpl(
      _CargaExitosa _value, $Res Function(_CargaExitosa) _then)
      : super(_value, (v) => _then(v as _CargaExitosa));

  @override
  _CargaExitosa get _value => super._value as _CargaExitosa;

  @override
  $Res call({
    Object? entrevistas = freezed,
  }) {
    return _then(_CargaExitosa(
      entrevistas == freezed
          ? _value.entrevistas
          : entrevistas // ignore: cast_nullable_to_non_nullable
              as List<Entrevista>,
    ));
  }
}

/// @nodoc

class _$_CargaExitosa implements _CargaExitosa {
  const _$_CargaExitosa(this.entrevistas);

  @override
  final List<Entrevista> entrevistas;

  @override
  String toString() {
    return 'VerListaEntrevistasState.cargaExitosa(entrevistas: $entrevistas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CargaExitosa &&
            (identical(other.entrevistas, entrevistas) ||
                const DeepCollectionEquality()
                    .equals(other.entrevistas, entrevistas)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entrevistas);

  @JsonKey(ignore: true)
  @override
  _$CargaExitosaCopyWith<_CargaExitosa> get copyWith =>
      __$CargaExitosaCopyWithImpl<_CargaExitosa>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<Entrevista> entrevistas) cargaExitosa,
    required TResult Function(ContratacionExcepcion entrevistaFallidaExcepcion)
        cargaFallida,
  }) {
    return cargaExitosa(entrevistas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<Entrevista> entrevistas)? cargaExitosa,
    TResult Function(ContratacionExcepcion entrevistaFallidaExcepcion)?
        cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaExitosa != null) {
      return cargaExitosa(entrevistas);
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

abstract class _CargaExitosa implements VerListaEntrevistasState {
  const factory _CargaExitosa(List<Entrevista> entrevistas) = _$_CargaExitosa;

  List<Entrevista> get entrevistas => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CargaExitosaCopyWith<_CargaExitosa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CargaFallidaCopyWith<$Res> {
  factory _$CargaFallidaCopyWith(
          _CargaFallida value, $Res Function(_CargaFallida) then) =
      __$CargaFallidaCopyWithImpl<$Res>;
  $Res call({ContratacionExcepcion entrevistaFallidaExcepcion});

  $ContratacionExcepcionCopyWith<$Res> get entrevistaFallidaExcepcion;
}

/// @nodoc
class __$CargaFallidaCopyWithImpl<$Res>
    extends _$VerListaEntrevistasStateCopyWithImpl<$Res>
    implements _$CargaFallidaCopyWith<$Res> {
  __$CargaFallidaCopyWithImpl(
      _CargaFallida _value, $Res Function(_CargaFallida) _then)
      : super(_value, (v) => _then(v as _CargaFallida));

  @override
  _CargaFallida get _value => super._value as _CargaFallida;

  @override
  $Res call({
    Object? entrevistaFallidaExcepcion = freezed,
  }) {
    return _then(_CargaFallida(
      entrevistaFallidaExcepcion == freezed
          ? _value.entrevistaFallidaExcepcion
          : entrevistaFallidaExcepcion // ignore: cast_nullable_to_non_nullable
              as ContratacionExcepcion,
    ));
  }

  @override
  $ContratacionExcepcionCopyWith<$Res> get entrevistaFallidaExcepcion {
    return $ContratacionExcepcionCopyWith<$Res>(
        _value.entrevistaFallidaExcepcion, (value) {
      return _then(_value.copyWith(entrevistaFallidaExcepcion: value));
    });
  }
}

/// @nodoc

class _$_CargaFallida implements _CargaFallida {
  const _$_CargaFallida(this.entrevistaFallidaExcepcion);

  @override
  final ContratacionExcepcion entrevistaFallidaExcepcion;

  @override
  String toString() {
    return 'VerListaEntrevistasState.cargaFallida(entrevistaFallidaExcepcion: $entrevistaFallidaExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CargaFallida &&
            (identical(other.entrevistaFallidaExcepcion,
                    entrevistaFallidaExcepcion) ||
                const DeepCollectionEquality().equals(
                    other.entrevistaFallidaExcepcion,
                    entrevistaFallidaExcepcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entrevistaFallidaExcepcion);

  @JsonKey(ignore: true)
  @override
  _$CargaFallidaCopyWith<_CargaFallida> get copyWith =>
      __$CargaFallidaCopyWithImpl<_CargaFallida>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<Entrevista> entrevistas) cargaExitosa,
    required TResult Function(ContratacionExcepcion entrevistaFallidaExcepcion)
        cargaFallida,
  }) {
    return cargaFallida(entrevistaFallidaExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<Entrevista> entrevistas)? cargaExitosa,
    TResult Function(ContratacionExcepcion entrevistaFallidaExcepcion)?
        cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaFallida != null) {
      return cargaFallida(entrevistaFallidaExcepcion);
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

abstract class _CargaFallida implements VerListaEntrevistasState {
  const factory _CargaFallida(
      ContratacionExcepcion entrevistaFallidaExcepcion) = _$_CargaFallida;

  ContratacionExcepcion get entrevistaFallidaExcepcion =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CargaFallidaCopyWith<_CargaFallida> get copyWith =>
      throw _privateConstructorUsedError;
}
