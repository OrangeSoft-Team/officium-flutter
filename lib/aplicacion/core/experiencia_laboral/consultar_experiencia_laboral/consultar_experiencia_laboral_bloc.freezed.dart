// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'consultar_experiencia_laboral_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConsultarExperienciaLaboralEventTearOff {
  const _$ConsultarExperienciaLaboralEventTearOff();

  _VerTodasLasExperienciasLaboralesEmpezado
      verTodasLasExperienciasLaboralesEmpezado(Identificador uuidEmpleado) {
    return _VerTodasLasExperienciasLaboralesEmpezado(
      uuidEmpleado,
    );
  }

  _ExperienciasLaboralesRecibidas experienciasLaboralesRecibidas(
      Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
          postulacionesOExcepcion) {
    return _ExperienciasLaboralesRecibidas(
      postulacionesOExcepcion,
    );
  }
}

/// @nodoc
const $ConsultarExperienciaLaboralEvent =
    _$ConsultarExperienciaLaboralEventTearOff();

/// @nodoc
mixin _$ConsultarExperienciaLaboralEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodasLasExperienciasLaboralesEmpezado,
    required TResult Function(
            Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
                postulacionesOExcepcion)
        experienciasLaboralesRecibidas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)?
        verTodasLasExperienciasLaboralesEmpezado,
    TResult Function(
            Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
                postulacionesOExcepcion)?
        experienciasLaboralesRecibidas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodasLasExperienciasLaboralesEmpezado value)
        verTodasLasExperienciasLaboralesEmpezado,
    required TResult Function(_ExperienciasLaboralesRecibidas value)
        experienciasLaboralesRecibidas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodasLasExperienciasLaboralesEmpezado value)?
        verTodasLasExperienciasLaboralesEmpezado,
    TResult Function(_ExperienciasLaboralesRecibidas value)?
        experienciasLaboralesRecibidas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultarExperienciaLaboralEventCopyWith<$Res> {
  factory $ConsultarExperienciaLaboralEventCopyWith(
          ConsultarExperienciaLaboralEvent value,
          $Res Function(ConsultarExperienciaLaboralEvent) then) =
      _$ConsultarExperienciaLaboralEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConsultarExperienciaLaboralEventCopyWithImpl<$Res>
    implements $ConsultarExperienciaLaboralEventCopyWith<$Res> {
  _$ConsultarExperienciaLaboralEventCopyWithImpl(this._value, this._then);

  final ConsultarExperienciaLaboralEvent _value;
  // ignore: unused_field
  final $Res Function(ConsultarExperienciaLaboralEvent) _then;
}

/// @nodoc
abstract class _$VerTodasLasExperienciasLaboralesEmpezadoCopyWith<$Res> {
  factory _$VerTodasLasExperienciasLaboralesEmpezadoCopyWith(
          _VerTodasLasExperienciasLaboralesEmpezado value,
          $Res Function(_VerTodasLasExperienciasLaboralesEmpezado) then) =
      __$VerTodasLasExperienciasLaboralesEmpezadoCopyWithImpl<$Res>;
  $Res call({Identificador uuidEmpleado});
}

/// @nodoc
class __$VerTodasLasExperienciasLaboralesEmpezadoCopyWithImpl<$Res>
    extends _$ConsultarExperienciaLaboralEventCopyWithImpl<$Res>
    implements _$VerTodasLasExperienciasLaboralesEmpezadoCopyWith<$Res> {
  __$VerTodasLasExperienciasLaboralesEmpezadoCopyWithImpl(
      _VerTodasLasExperienciasLaboralesEmpezado _value,
      $Res Function(_VerTodasLasExperienciasLaboralesEmpezado) _then)
      : super(_value,
            (v) => _then(v as _VerTodasLasExperienciasLaboralesEmpezado));

  @override
  _VerTodasLasExperienciasLaboralesEmpezado get _value =>
      super._value as _VerTodasLasExperienciasLaboralesEmpezado;

  @override
  $Res call({
    Object? uuidEmpleado = freezed,
  }) {
    return _then(_VerTodasLasExperienciasLaboralesEmpezado(
      uuidEmpleado == freezed
          ? _value.uuidEmpleado
          : uuidEmpleado // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

class _$_VerTodasLasExperienciasLaboralesEmpezado
    implements _VerTodasLasExperienciasLaboralesEmpezado {
  const _$_VerTodasLasExperienciasLaboralesEmpezado(this.uuidEmpleado);

  @override
  final Identificador uuidEmpleado;

  @override
  String toString() {
    return 'ConsultarExperienciaLaboralEvent.verTodasLasExperienciasLaboralesEmpezado(uuidEmpleado: $uuidEmpleado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerTodasLasExperienciasLaboralesEmpezado &&
            (identical(other.uuidEmpleado, uuidEmpleado) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEmpleado, uuidEmpleado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuidEmpleado);

  @JsonKey(ignore: true)
  @override
  _$VerTodasLasExperienciasLaboralesEmpezadoCopyWith<
          _VerTodasLasExperienciasLaboralesEmpezado>
      get copyWith => __$VerTodasLasExperienciasLaboralesEmpezadoCopyWithImpl<
          _VerTodasLasExperienciasLaboralesEmpezado>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodasLasExperienciasLaboralesEmpezado,
    required TResult Function(
            Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
                postulacionesOExcepcion)
        experienciasLaboralesRecibidas,
  }) {
    return verTodasLasExperienciasLaboralesEmpezado(uuidEmpleado);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)?
        verTodasLasExperienciasLaboralesEmpezado,
    TResult Function(
            Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
                postulacionesOExcepcion)?
        experienciasLaboralesRecibidas,
    required TResult orElse(),
  }) {
    if (verTodasLasExperienciasLaboralesEmpezado != null) {
      return verTodasLasExperienciasLaboralesEmpezado(uuidEmpleado);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodasLasExperienciasLaboralesEmpezado value)
        verTodasLasExperienciasLaboralesEmpezado,
    required TResult Function(_ExperienciasLaboralesRecibidas value)
        experienciasLaboralesRecibidas,
  }) {
    return verTodasLasExperienciasLaboralesEmpezado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodasLasExperienciasLaboralesEmpezado value)?
        verTodasLasExperienciasLaboralesEmpezado,
    TResult Function(_ExperienciasLaboralesRecibidas value)?
        experienciasLaboralesRecibidas,
    required TResult orElse(),
  }) {
    if (verTodasLasExperienciasLaboralesEmpezado != null) {
      return verTodasLasExperienciasLaboralesEmpezado(this);
    }
    return orElse();
  }
}

abstract class _VerTodasLasExperienciasLaboralesEmpezado
    implements ConsultarExperienciaLaboralEvent {
  const factory _VerTodasLasExperienciasLaboralesEmpezado(
      Identificador uuidEmpleado) = _$_VerTodasLasExperienciasLaboralesEmpezado;

  Identificador get uuidEmpleado => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerTodasLasExperienciasLaboralesEmpezadoCopyWith<
          _VerTodasLasExperienciasLaboralesEmpezado>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExperienciasLaboralesRecibidasCopyWith<$Res> {
  factory _$ExperienciasLaboralesRecibidasCopyWith(
          _ExperienciasLaboralesRecibidas value,
          $Res Function(_ExperienciasLaboralesRecibidas) then) =
      __$ExperienciasLaboralesRecibidasCopyWithImpl<$Res>;
  $Res call(
      {Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
          postulacionesOExcepcion});
}

/// @nodoc
class __$ExperienciasLaboralesRecibidasCopyWithImpl<$Res>
    extends _$ConsultarExperienciaLaboralEventCopyWithImpl<$Res>
    implements _$ExperienciasLaboralesRecibidasCopyWith<$Res> {
  __$ExperienciasLaboralesRecibidasCopyWithImpl(
      _ExperienciasLaboralesRecibidas _value,
      $Res Function(_ExperienciasLaboralesRecibidas) _then)
      : super(_value, (v) => _then(v as _ExperienciasLaboralesRecibidas));

  @override
  _ExperienciasLaboralesRecibidas get _value =>
      super._value as _ExperienciasLaboralesRecibidas;

  @override
  $Res call({
    Object? postulacionesOExcepcion = freezed,
  }) {
    return _then(_ExperienciasLaboralesRecibidas(
      postulacionesOExcepcion == freezed
          ? _value.postulacionesOExcepcion
          : postulacionesOExcepcion // ignore: cast_nullable_to_non_nullable
              as Either<EmpleadoExcepcion, List<ExperienciaLaboral>>,
    ));
  }
}

/// @nodoc

class _$_ExperienciasLaboralesRecibidas
    implements _ExperienciasLaboralesRecibidas {
  const _$_ExperienciasLaboralesRecibidas(this.postulacionesOExcepcion);

  @override
  final Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
      postulacionesOExcepcion;

  @override
  String toString() {
    return 'ConsultarExperienciaLaboralEvent.experienciasLaboralesRecibidas(postulacionesOExcepcion: $postulacionesOExcepcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienciasLaboralesRecibidas &&
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
  _$ExperienciasLaboralesRecibidasCopyWith<_ExperienciasLaboralesRecibidas>
      get copyWith => __$ExperienciasLaboralesRecibidasCopyWithImpl<
          _ExperienciasLaboralesRecibidas>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Identificador uuidEmpleado)
        verTodasLasExperienciasLaboralesEmpezado,
    required TResult Function(
            Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
                postulacionesOExcepcion)
        experienciasLaboralesRecibidas,
  }) {
    return experienciasLaboralesRecibidas(postulacionesOExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identificador uuidEmpleado)?
        verTodasLasExperienciasLaboralesEmpezado,
    TResult Function(
            Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
                postulacionesOExcepcion)?
        experienciasLaboralesRecibidas,
    required TResult orElse(),
  }) {
    if (experienciasLaboralesRecibidas != null) {
      return experienciasLaboralesRecibidas(postulacionesOExcepcion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerTodasLasExperienciasLaboralesEmpezado value)
        verTodasLasExperienciasLaboralesEmpezado,
    required TResult Function(_ExperienciasLaboralesRecibidas value)
        experienciasLaboralesRecibidas,
  }) {
    return experienciasLaboralesRecibidas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerTodasLasExperienciasLaboralesEmpezado value)?
        verTodasLasExperienciasLaboralesEmpezado,
    TResult Function(_ExperienciasLaboralesRecibidas value)?
        experienciasLaboralesRecibidas,
    required TResult orElse(),
  }) {
    if (experienciasLaboralesRecibidas != null) {
      return experienciasLaboralesRecibidas(this);
    }
    return orElse();
  }
}

abstract class _ExperienciasLaboralesRecibidas
    implements ConsultarExperienciaLaboralEvent {
  const factory _ExperienciasLaboralesRecibidas(
      Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
          postulacionesOExcepcion) = _$_ExperienciasLaboralesRecibidas;

  Either<EmpleadoExcepcion, List<ExperienciaLaboral>>
      get postulacionesOExcepcion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ExperienciasLaboralesRecibidasCopyWith<_ExperienciasLaboralesRecibidas>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConsultarExperienciaLaboralStateTearOff {
  const _$ConsultarExperienciaLaboralStateTearOff();

  _Inicial inicial() {
    return const _Inicial();
  }

  _CargaEnProgreso cargaEnProgreso() {
    return const _CargaEnProgreso();
  }

  _CargaExitosa cargaExitosa(List<ExperienciaLaboral> postulaciones) {
    return _CargaExitosa(
      postulaciones,
    );
  }

  _CargaFallida cargaFallida(EmpleadoExcepcion postulacionFacilladaExcepcion) {
    return _CargaFallida(
      postulacionFacilladaExcepcion,
    );
  }
}

/// @nodoc
const $ConsultarExperienciaLaboralState =
    _$ConsultarExperienciaLaboralStateTearOff();

/// @nodoc
mixin _$ConsultarExperienciaLaboralState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inicial,
    required TResult Function() cargaEnProgreso,
    required TResult Function(List<ExperienciaLaboral> postulaciones)
        cargaExitosa,
    required TResult Function(EmpleadoExcepcion postulacionFacilladaExcepcion)
        cargaFallida,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<ExperienciaLaboral> postulaciones)? cargaExitosa,
    TResult Function(EmpleadoExcepcion postulacionFacilladaExcepcion)?
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
abstract class $ConsultarExperienciaLaboralStateCopyWith<$Res> {
  factory $ConsultarExperienciaLaboralStateCopyWith(
          ConsultarExperienciaLaboralState value,
          $Res Function(ConsultarExperienciaLaboralState) then) =
      _$ConsultarExperienciaLaboralStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConsultarExperienciaLaboralStateCopyWithImpl<$Res>
    implements $ConsultarExperienciaLaboralStateCopyWith<$Res> {
  _$ConsultarExperienciaLaboralStateCopyWithImpl(this._value, this._then);

  final ConsultarExperienciaLaboralState _value;
  // ignore: unused_field
  final $Res Function(ConsultarExperienciaLaboralState) _then;
}

/// @nodoc
abstract class _$InicialCopyWith<$Res> {
  factory _$InicialCopyWith(_Inicial value, $Res Function(_Inicial) then) =
      __$InicialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InicialCopyWithImpl<$Res>
    extends _$ConsultarExperienciaLaboralStateCopyWithImpl<$Res>
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
    return 'ConsultarExperienciaLaboralState.inicial()';
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
    required TResult Function(List<ExperienciaLaboral> postulaciones)
        cargaExitosa,
    required TResult Function(EmpleadoExcepcion postulacionFacilladaExcepcion)
        cargaFallida,
  }) {
    return inicial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<ExperienciaLaboral> postulaciones)? cargaExitosa,
    TResult Function(EmpleadoExcepcion postulacionFacilladaExcepcion)?
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

abstract class _Inicial implements ConsultarExperienciaLaboralState {
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
    extends _$ConsultarExperienciaLaboralStateCopyWithImpl<$Res>
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
    return 'ConsultarExperienciaLaboralState.cargaEnProgreso()';
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
    required TResult Function(List<ExperienciaLaboral> postulaciones)
        cargaExitosa,
    required TResult Function(EmpleadoExcepcion postulacionFacilladaExcepcion)
        cargaFallida,
  }) {
    return cargaEnProgreso();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<ExperienciaLaboral> postulaciones)? cargaExitosa,
    TResult Function(EmpleadoExcepcion postulacionFacilladaExcepcion)?
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

abstract class _CargaEnProgreso implements ConsultarExperienciaLaboralState {
  const factory _CargaEnProgreso() = _$_CargaEnProgreso;
}

/// @nodoc
abstract class _$CargaExitosaCopyWith<$Res> {
  factory _$CargaExitosaCopyWith(
          _CargaExitosa value, $Res Function(_CargaExitosa) then) =
      __$CargaExitosaCopyWithImpl<$Res>;
  $Res call({List<ExperienciaLaboral> postulaciones});
}

/// @nodoc
class __$CargaExitosaCopyWithImpl<$Res>
    extends _$ConsultarExperienciaLaboralStateCopyWithImpl<$Res>
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
              as List<ExperienciaLaboral>,
    ));
  }
}

/// @nodoc

class _$_CargaExitosa implements _CargaExitosa {
  const _$_CargaExitosa(this.postulaciones);

  @override
  final List<ExperienciaLaboral> postulaciones;

  @override
  String toString() {
    return 'ConsultarExperienciaLaboralState.cargaExitosa(postulaciones: $postulaciones)';
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
    required TResult Function(List<ExperienciaLaboral> postulaciones)
        cargaExitosa,
    required TResult Function(EmpleadoExcepcion postulacionFacilladaExcepcion)
        cargaFallida,
  }) {
    return cargaExitosa(postulaciones);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<ExperienciaLaboral> postulaciones)? cargaExitosa,
    TResult Function(EmpleadoExcepcion postulacionFacilladaExcepcion)?
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

abstract class _CargaExitosa implements ConsultarExperienciaLaboralState {
  const factory _CargaExitosa(List<ExperienciaLaboral> postulaciones) =
      _$_CargaExitosa;

  List<ExperienciaLaboral> get postulaciones =>
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
  $Res call({EmpleadoExcepcion postulacionFacilladaExcepcion});

  $EmpleadoExcepcionCopyWith<$Res> get postulacionFacilladaExcepcion;
}

/// @nodoc
class __$CargaFallidaCopyWithImpl<$Res>
    extends _$ConsultarExperienciaLaboralStateCopyWithImpl<$Res>
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
              as EmpleadoExcepcion,
    ));
  }

  @override
  $EmpleadoExcepcionCopyWith<$Res> get postulacionFacilladaExcepcion {
    return $EmpleadoExcepcionCopyWith<$Res>(
        _value.postulacionFacilladaExcepcion, (value) {
      return _then(_value.copyWith(postulacionFacilladaExcepcion: value));
    });
  }
}

/// @nodoc

class _$_CargaFallida implements _CargaFallida {
  const _$_CargaFallida(this.postulacionFacilladaExcepcion);

  @override
  final EmpleadoExcepcion postulacionFacilladaExcepcion;

  @override
  String toString() {
    return 'ConsultarExperienciaLaboralState.cargaFallida(postulacionFacilladaExcepcion: $postulacionFacilladaExcepcion)';
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
    required TResult Function(List<ExperienciaLaboral> postulaciones)
        cargaExitosa,
    required TResult Function(EmpleadoExcepcion postulacionFacilladaExcepcion)
        cargaFallida,
  }) {
    return cargaFallida(postulacionFacilladaExcepcion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inicial,
    TResult Function()? cargaEnProgreso,
    TResult Function(List<ExperienciaLaboral> postulaciones)? cargaExitosa,
    TResult Function(EmpleadoExcepcion postulacionFacilladaExcepcion)?
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

abstract class _CargaFallida implements ConsultarExperienciaLaboralState {
  const factory _CargaFallida(EmpleadoExcepcion postulacionFacilladaExcepcion) =
      _$_CargaFallida;

  EmpleadoExcepcion get postulacionFacilladaExcepcion =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CargaFallidaCopyWith<_CargaFallida> get copyWith =>
      throw _privateConstructorUsedError;
}
