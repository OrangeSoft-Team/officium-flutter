// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ver_todas_postulaciones_oferta_laboral_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerTodasPostulacionesOfertaLaboralEventTearOff {
  const _$VerTodasPostulacionesOfertaLaboralEventTearOff();

  _VerTodasLasPostulacionesEmpezado verTodasLasPostulacionesEmpezado(
      Identificador uuidEmpleado) {
    return _VerTodasLasPostulacionesEmpezado(
      uuidEmpleado,
    );
  }

  _PostulacionesRecibidas postulacionesRecibidas(
      Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
          postulacionesOExcepcion) {
    return _PostulacionesRecibidas(
      postulacionesOExcepcion,
    );
  }
}

/// @nodoc
const $VerTodasPostulacionesOfertaLaboralEvent =
    _$VerTodasPostulacionesOfertaLaboralEventTearOff();

/// @nodoc
mixin _$VerTodasPostulacionesOfertaLaboralEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodasLasPostulacionesEmpezado,
    required TResult Function(
            Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
                postulacionesOExcepcion)
        postulacionesRecibidas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)?
        verTodasLasPostulacionesEmpezado,
    TResult Function(
            Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
                postulacionesOExcepcion)?
        postulacionesRecibidas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodasLasPostulacionesEmpezado value)
        verTodasLasPostulacionesEmpezado,
    required TResult Function(_PostulacionesRecibidas value)
        postulacionesRecibidas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodasLasPostulacionesEmpezado value)?
        verTodasLasPostulacionesEmpezado,
    TResult Function(_PostulacionesRecibidas value)? postulacionesRecibidas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerTodasPostulacionesOfertaLaboralEventCopyWith<$Res> {
  factory $VerTodasPostulacionesOfertaLaboralEventCopyWith(
          VerTodasPostulacionesOfertaLaboralEvent value,
          $Res Function(VerTodasPostulacionesOfertaLaboralEvent) then) =
      _$VerTodasPostulacionesOfertaLaboralEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerTodasPostulacionesOfertaLaboralEventCopyWithImpl<$Res>
    implements $VerTodasPostulacionesOfertaLaboralEventCopyWith<$Res> {
  _$VerTodasPostulacionesOfertaLaboralEventCopyWithImpl(
      this._value, this._then);

  final VerTodasPostulacionesOfertaLaboralEvent _value;
  // ignore: unused_field
  final $Res Function(VerTodasPostulacionesOfertaLaboralEvent) _then;
}

/// @nodoc
abstract class _$VerTodasLasPostulacionesEmpezadoCopyWith<$Res> {
  factory _$VerTodasLasPostulacionesEmpezadoCopyWith(
          _VerTodasLasPostulacionesEmpezado value,
          $Res Function(_VerTodasLasPostulacionesEmpezado) then) =
      __$VerTodasLasPostulacionesEmpezadoCopyWithImpl<$Res>;
  $Res call({Identificador uuidEmpleado});
}

/// @nodoc
class __$VerTodasLasPostulacionesEmpezadoCopyWithImpl<$Res>
    extends _$VerTodasPostulacionesOfertaLaboralEventCopyWithImpl<$Res>
    implements _$VerTodasLasPostulacionesEmpezadoCopyWith<$Res> {
  __$VerTodasLasPostulacionesEmpezadoCopyWithImpl(
      _VerTodasLasPostulacionesEmpezado _value,
      $Res Function(_VerTodasLasPostulacionesEmpezado) _then)
      : super(_value, (v) => _then(v as _VerTodasLasPostulacionesEmpezado));

  @override
  _VerTodasLasPostulacionesEmpezado get _value =>
      super._value as _VerTodasLasPostulacionesEmpezado;

  @override
  $Res call({
    Object? uuidEmpleado = freezed,
  }) {
    return _then(_VerTodasLasPostulacionesEmpezado(
      uuidEmpleado == freezed
          ? _value.uuidEmpleado
          : uuidEmpleado // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

class _$_VerTodasLasPostulacionesEmpezado
    implements _VerTodasLasPostulacionesEmpezado {
  const _$_VerTodasLasPostulacionesEmpezado(this.uuidEmpleado);

  @override
  final Identificador uuidEmpleado;

  @override
  String toString() {
    return 'VerTodasPostulacionesOfertaLaboralEvent.verTodasLasPostulacionesEmpezado(uuidEmpleado: $uuidEmpleado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerTodasLasPostulacionesEmpezado &&
            (identical(other.uuidEmpleado, uuidEmpleado) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEmpleado, uuidEmpleado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuidEmpleado);

  @JsonKey(ignore: true)
  @override
  _$VerTodasLasPostulacionesEmpezadoCopyWith<_VerTodasLasPostulacionesEmpezado>
      get copyWith => __$VerTodasLasPostulacionesEmpezadoCopyWithImpl<
          _VerTodasLasPostulacionesEmpezado>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodasLasPostulacionesEmpezado,
    required TResult Function(
            Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
                postulacionesOExcepcion)
        postulacionesRecibidas,
  }) {
    return verTodasLasPostulacionesEmpezado(uuidEmpleado);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)?
        verTodasLasPostulacionesEmpezado,
    TResult Function(
            Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
                postulacionesOExcepcion)?
        postulacionesRecibidas,
    required TResult orElse(),
  }) {
    if (verTodasLasPostulacionesEmpezado != null) {
      return verTodasLasPostulacionesEmpezado(uuidEmpleado);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodasLasPostulacionesEmpezado value)
        verTodasLasPostulacionesEmpezado,
    required TResult Function(_PostulacionesRecibidas value)
        postulacionesRecibidas,
  }) {
    return verTodasLasPostulacionesEmpezado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodasLasPostulacionesEmpezado value)?
        verTodasLasPostulacionesEmpezado,
    TResult Function(_PostulacionesRecibidas value)? postulacionesRecibidas,
    required TResult orElse(),
  }) {
    if (verTodasLasPostulacionesEmpezado != null) {
      return verTodasLasPostulacionesEmpezado(this);
    }
    return orElse();
  }
}

abstract class _VerTodasLasPostulacionesEmpezado
    implements VerTodasPostulacionesOfertaLaboralEvent {
  const factory _VerTodasLasPostulacionesEmpezado(Identificador uuidEmpleado) =
      _$_VerTodasLasPostulacionesEmpezado;

  Identificador get uuidEmpleado => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerTodasLasPostulacionesEmpezadoCopyWith<_VerTodasLasPostulacionesEmpezado>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostulacionesRecibidasCopyWith<$Res> {
  factory _$PostulacionesRecibidasCopyWith(_PostulacionesRecibidas value,
          $Res Function(_PostulacionesRecibidas) then) =
      __$PostulacionesRecibidasCopyWithImpl<$Res>;
  $Res call(
      {Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
          postulacionesOExcepcion});
}

/// @nodoc
class __$PostulacionesRecibidasCopyWithImpl<$Res>
    extends _$VerTodasPostulacionesOfertaLaboralEventCopyWithImpl<$Res>
    implements _$PostulacionesRecibidasCopyWith<$Res> {
  __$PostulacionesRecibidasCopyWithImpl(_PostulacionesRecibidas _value,
      $Res Function(_PostulacionesRecibidas) _then)
      : super(_value, (v) => _then(v as _PostulacionesRecibidas));

  @override
  _PostulacionesRecibidas get _value => super._value as _PostulacionesRecibidas;

  @override
  $Res call({
    Object? postulacionesOExcepcion = freezed,
  }) {
    return _then(_PostulacionesRecibidas(
      postulacionesOExcepcion == freezed
          ? _value.postulacionesOExcepcion
          : postulacionesOExcepcion // ignore: cast_nullable_to_non_nullable
              as Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>,
    ));
  }
}

/// @nodoc

class _$_PostulacionesRecibidas implements _PostulacionesRecibidas {
  const _$_PostulacionesRecibidas(this.postulacionesOExcepcion);

  @override
  final Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
      postulacionesOExcepcion;

  @override
  String toString() {
    return 'VerTodasPostulacionesOfertaLaboralEvent.postulacionesRecibidas(postulacionesOExcepcion: $postulacionesOExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostulacionesRecibidas &&
            (identical(
                    other.postulacionesOExcepcion, postulacionesOExcepcion) ||
                const DeepCollectionEquality().equals(
                    other.postulacionesOExcepcion, postulacionesOExcepcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postulacionesOExcepcion);

  @JsonKey(ignore: true)
  @override
  _$PostulacionesRecibidasCopyWith<_PostulacionesRecibidas> get copyWith =>
      __$PostulacionesRecibidasCopyWithImpl<_PostulacionesRecibidas>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodasLasPostulacionesEmpezado,
    required TResult Function(
            Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
                postulacionesOExcepcion)
        postulacionesRecibidas,
  }) {
    return postulacionesRecibidas(postulacionesOExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)?
        verTodasLasPostulacionesEmpezado,
    TResult Function(
            Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
                postulacionesOExcepcion)?
        postulacionesRecibidas,
    required TResult orElse(),
  }) {
    if (postulacionesRecibidas != null) {
      return postulacionesRecibidas(postulacionesOExcepcion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodasLasPostulacionesEmpezado value)
        verTodasLasPostulacionesEmpezado,
    required TResult Function(_PostulacionesRecibidas value)
        postulacionesRecibidas,
  }) {
    return postulacionesRecibidas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodasLasPostulacionesEmpezado value)?
        verTodasLasPostulacionesEmpezado,
    TResult Function(_PostulacionesRecibidas value)? postulacionesRecibidas,
    required TResult orElse(),
  }) {
    if (postulacionesRecibidas != null) {
      return postulacionesRecibidas(this);
    }
    return orElse();
  }
}

abstract class _PostulacionesRecibidas
    implements VerTodasPostulacionesOfertaLaboralEvent {
  const factory _PostulacionesRecibidas(
      Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
          postulacionesOExcepcion) = _$_PostulacionesRecibidas;

  Either<ContratacionExcepcion, List<PostulacionOfertaLaboral>>
      get postulacionesOExcepcion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostulacionesRecibidasCopyWith<_PostulacionesRecibidas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VerTodasPostulacionesOfertaLaboralStateTearOff {
  const _$VerTodasPostulacionesOfertaLaboralStateTearOff();

  _Inicial inicial() {
    return const _Inicial();
  }

  _CargaEnProgreso cargaEnProgreso() {
    return const _CargaEnProgreso();
  }

  _CargaExitosa cargaExitosa(List<PostulacionOfertaLaboral> postulaciones) {
    return _CargaExitosa(
      postulaciones,
    );
  }

  _CargaFallida cargaFallida(
      ContratacionExcepcion postulacionFacilladaExcepcion) {
    return _CargaFallida(
      postulacionFacilladaExcepcion,
    );
  }
}

/// @nodoc
const $VerTodasPostulacionesOfertaLaboralState =
    _$VerTodasPostulacionesOfertaLaboralStateTearOff();

/// @nodoc
mixin _$VerTodasPostulacionesOfertaLaboralState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<PostulacionOfertaLaboral> postulaciones)
        cargaExitosa,
    required TResult Function(
            ContratacionExcepcion postulacionFacilladaExcepcion)
        cargaFallida,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<PostulacionOfertaLaboral> postulaciones)?
        cargaExitosa,
    TResult Function(ContratacionExcepcion postulacionFacilladaExcepcion)?
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
abstract class $VerTodasPostulacionesOfertaLaboralStateCopyWith<$Res> {
  factory $VerTodasPostulacionesOfertaLaboralStateCopyWith(
          VerTodasPostulacionesOfertaLaboralState value,
          $Res Function(VerTodasPostulacionesOfertaLaboralState) then) =
      _$VerTodasPostulacionesOfertaLaboralStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerTodasPostulacionesOfertaLaboralStateCopyWithImpl<$Res>
    implements $VerTodasPostulacionesOfertaLaboralStateCopyWith<$Res> {
  _$VerTodasPostulacionesOfertaLaboralStateCopyWithImpl(
      this._value, this._then);

  final VerTodasPostulacionesOfertaLaboralState _value;
  // ignore: unused_field
  final $Res Function(VerTodasPostulacionesOfertaLaboralState) _then;
}

/// @nodoc
abstract class _$InicialCopyWith<$Res> {
  factory _$InicialCopyWith(_Inicial value, $Res Function(_Inicial) then) =
      __$InicialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InicialCopyWithImpl<$Res>
    extends _$VerTodasPostulacionesOfertaLaboralStateCopyWithImpl<$Res>
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
    return 'VerTodasPostulacionesOfertaLaboralState.inicial()';
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
    required TResult Function(List<PostulacionOfertaLaboral> postulaciones)
        cargaExitosa,
    required TResult Function(
            ContratacionExcepcion postulacionFacilladaExcepcion)
        cargaFallida,
  }) {
    return inicial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<PostulacionOfertaLaboral> postulaciones)?
        cargaExitosa,
    TResult Function(ContratacionExcepcion postulacionFacilladaExcepcion)?
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

abstract class _Inicial implements VerTodasPostulacionesOfertaLaboralState {
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
    extends _$VerTodasPostulacionesOfertaLaboralStateCopyWithImpl<$Res>
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
    return 'VerTodasPostulacionesOfertaLaboralState.cargaEnProgreso()';
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
    required TResult Function(List<PostulacionOfertaLaboral> postulaciones)
        cargaExitosa,
    required TResult Function(
            ContratacionExcepcion postulacionFacilladaExcepcion)
        cargaFallida,
  }) {
    return cargaEnProgreso();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<PostulacionOfertaLaboral> postulaciones)?
        cargaExitosa,
    TResult Function(ContratacionExcepcion postulacionFacilladaExcepcion)?
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

abstract class _CargaEnProgreso
    implements VerTodasPostulacionesOfertaLaboralState {
  const factory _CargaEnProgreso() = _$_CargaEnProgreso;
}

/// @nodoc
abstract class _$CargaExitosaCopyWith<$Res> {
  factory _$CargaExitosaCopyWith(
          _CargaExitosa value, $Res Function(_CargaExitosa) then) =
      __$CargaExitosaCopyWithImpl<$Res>;
  $Res call({List<PostulacionOfertaLaboral> postulaciones});
}

/// @nodoc
class __$CargaExitosaCopyWithImpl<$Res>
    extends _$VerTodasPostulacionesOfertaLaboralStateCopyWithImpl<$Res>
    implements _$CargaExitosaCopyWith<$Res> {
  __$CargaExitosaCopyWithImpl(
      _CargaExitosa _value, $Res Function(_CargaExitosa) _then)
      : super(_value, (v) => _then(v as _CargaExitosa));

  @override
  _CargaExitosa get _value => super._value as _CargaExitosa;

  @override
  $Res call({
    Object? postulaciones = freezed,
  }) {
    return _then(_CargaExitosa(
      postulaciones == freezed
          ? _value.postulaciones
          : postulaciones // ignore: cast_nullable_to_non_nullable
              as List<PostulacionOfertaLaboral>,
    ));
  }
}

/// @nodoc

class _$_CargaExitosa implements _CargaExitosa {
  const _$_CargaExitosa(this.postulaciones);

  @override
  final List<PostulacionOfertaLaboral> postulaciones;

  @override
  String toString() {
    return 'VerTodasPostulacionesOfertaLaboralState.cargaExitosa(postulaciones: $postulaciones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CargaExitosa &&
            (identical(other.postulaciones, postulaciones) ||
                const DeepCollectionEquality()
                    .equals(other.postulaciones, postulaciones)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postulaciones);

  @JsonKey(ignore: true)
  @override
  _$CargaExitosaCopyWith<_CargaExitosa> get copyWith =>
      __$CargaExitosaCopyWithImpl<_CargaExitosa>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<PostulacionOfertaLaboral> postulaciones)
        cargaExitosa,
    required TResult Function(
            ContratacionExcepcion postulacionFacilladaExcepcion)
        cargaFallida,
  }) {
    return cargaExitosa(postulaciones);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<PostulacionOfertaLaboral> postulaciones)?
        cargaExitosa,
    TResult Function(ContratacionExcepcion postulacionFacilladaExcepcion)?
        cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaExitosa != null) {
      return cargaExitosa(postulaciones);
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

abstract class _CargaExitosa
    implements VerTodasPostulacionesOfertaLaboralState {
  const factory _CargaExitosa(List<PostulacionOfertaLaboral> postulaciones) =
      _$_CargaExitosa;

  List<PostulacionOfertaLaboral> get postulaciones =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CargaExitosaCopyWith<_CargaExitosa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CargaFallidaCopyWith<$Res> {
  factory _$CargaFallidaCopyWith(
          _CargaFallida value, $Res Function(_CargaFallida) then) =
      __$CargaFallidaCopyWithImpl<$Res>;
  $Res call({ContratacionExcepcion postulacionFacilladaExcepcion});

  $ContratacionExcepcionCopyWith<$Res> get postulacionFacilladaExcepcion;
}

/// @nodoc
class __$CargaFallidaCopyWithImpl<$Res>
    extends _$VerTodasPostulacionesOfertaLaboralStateCopyWithImpl<$Res>
    implements _$CargaFallidaCopyWith<$Res> {
  __$CargaFallidaCopyWithImpl(
      _CargaFallida _value, $Res Function(_CargaFallida) _then)
      : super(_value, (v) => _then(v as _CargaFallida));

  @override
  _CargaFallida get _value => super._value as _CargaFallida;

  @override
  $Res call({
    Object? postulacionFacilladaExcepcion = freezed,
  }) {
    return _then(_CargaFallida(
      postulacionFacilladaExcepcion == freezed
          ? _value.postulacionFacilladaExcepcion
          : postulacionFacilladaExcepcion // ignore: cast_nullable_to_non_nullable
              as ContratacionExcepcion,
    ));
  }

  @override
  $ContratacionExcepcionCopyWith<$Res> get postulacionFacilladaExcepcion {
    return $ContratacionExcepcionCopyWith<$Res>(
        _value.postulacionFacilladaExcepcion, (value) {
      return _then(_value.copyWith(postulacionFacilladaExcepcion: value));
    });
  }
}

/// @nodoc

class _$_CargaFallida implements _CargaFallida {
  const _$_CargaFallida(this.postulacionFacilladaExcepcion);

  @override
  final ContratacionExcepcion postulacionFacilladaExcepcion;

  @override
  String toString() {
    return 'VerTodasPostulacionesOfertaLaboralState.cargaFallida(postulacionFacilladaExcepcion: $postulacionFacilladaExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CargaFallida &&
            (identical(other.postulacionFacilladaExcepcion,
                    postulacionFacilladaExcepcion) ||
                const DeepCollectionEquality().equals(
                    other.postulacionFacilladaExcepcion,
                    postulacionFacilladaExcepcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postulacionFacilladaExcepcion);

  @JsonKey(ignore: true)
  @override
  _$CargaFallidaCopyWith<_CargaFallida> get copyWith =>
      __$CargaFallidaCopyWithImpl<_CargaFallida>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<PostulacionOfertaLaboral> postulaciones)
        cargaExitosa,
    required TResult Function(
            ContratacionExcepcion postulacionFacilladaExcepcion)
        cargaFallida,
  }) {
    return cargaFallida(postulacionFacilladaExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<PostulacionOfertaLaboral> postulaciones)?
        cargaExitosa,
    TResult Function(ContratacionExcepcion postulacionFacilladaExcepcion)?
        cargaFallida,
    required TResult orElse(),
  }) {
    if (cargaFallida != null) {
      return cargaFallida(postulacionFacilladaExcepcion);
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

abstract class _CargaFallida
    implements VerTodasPostulacionesOfertaLaboralState {
  const factory _CargaFallida(
      ContratacionExcepcion postulacionFacilladaExcepcion) = _$_CargaFallida;

  ContratacionExcepcion get postulacionFacilladaExcepcion =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CargaFallidaCopyWith<_CargaFallida> get copyWith =>
      throw _privateConstructorUsedError;
}
