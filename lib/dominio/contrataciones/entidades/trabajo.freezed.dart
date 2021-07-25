// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'trabajo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrabajoTearOff {
  const _$TrabajoTearOff();

  _Trabajo call(
      {required Identificador uuidTrabajo,
      required TituloTrabajo tituloOfertaLaboral,
      required Fecha fechaInicio,
      Fecha? fechaFin,
      required EstadoTrabajo estadoTrabajo}) {
    return _Trabajo(
      uuidTrabajo: uuidTrabajo,
      tituloOfertaLaboral: tituloOfertaLaboral,
      fechaInicio: fechaInicio,
      fechaFin: fechaFin,
      estadoTrabajo: estadoTrabajo,
    );
  }
}

/// @nodoc
const $Trabajo = _$TrabajoTearOff();

/// @nodoc
mixin _$Trabajo {
  Identificador get uuidTrabajo => throw _privateConstructorUsedError;
  TituloTrabajo get tituloOfertaLaboral => throw _privateConstructorUsedError;
  Fecha get fechaInicio => throw _privateConstructorUsedError;
  Fecha? get fechaFin => throw _privateConstructorUsedError;
  EstadoTrabajo get estadoTrabajo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrabajoCopyWith<Trabajo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrabajoCopyWith<$Res> {
  factory $TrabajoCopyWith(Trabajo value, $Res Function(Trabajo) then) =
      _$TrabajoCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuidTrabajo,
      TituloTrabajo tituloOfertaLaboral,
      Fecha fechaInicio,
      Fecha? fechaFin,
      EstadoTrabajo estadoTrabajo});
}

/// @nodoc
class _$TrabajoCopyWithImpl<$Res> implements $TrabajoCopyWith<$Res> {
  _$TrabajoCopyWithImpl(this._value, this._then);

  final Trabajo _value;
  // ignore: unused_field
  final $Res Function(Trabajo) _then;

  @override
  $Res call({
    Object? uuidTrabajo = freezed,
    Object? tituloOfertaLaboral = freezed,
    Object? fechaInicio = freezed,
    Object? fechaFin = freezed,
    Object? estadoTrabajo = freezed,
  }) {
    return _then(_value.copyWith(
      uuidTrabajo: uuidTrabajo == freezed
          ? _value.uuidTrabajo
          : uuidTrabajo // ignore: cast_nullable_to_non_nullable
              as Identificador,
      tituloOfertaLaboral: tituloOfertaLaboral == freezed
          ? _value.tituloOfertaLaboral
          : tituloOfertaLaboral // ignore: cast_nullable_to_non_nullable
              as TituloTrabajo,
      fechaInicio: fechaInicio == freezed
          ? _value.fechaInicio
          : fechaInicio // ignore: cast_nullable_to_non_nullable
              as Fecha,
      fechaFin: fechaFin == freezed
          ? _value.fechaFin
          : fechaFin // ignore: cast_nullable_to_non_nullable
              as Fecha?,
      estadoTrabajo: estadoTrabajo == freezed
          ? _value.estadoTrabajo
          : estadoTrabajo // ignore: cast_nullable_to_non_nullable
              as EstadoTrabajo,
    ));
  }
}

/// @nodoc
abstract class _$TrabajoCopyWith<$Res> implements $TrabajoCopyWith<$Res> {
  factory _$TrabajoCopyWith(_Trabajo value, $Res Function(_Trabajo) then) =
      __$TrabajoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identificador uuidTrabajo,
      TituloTrabajo tituloOfertaLaboral,
      Fecha fechaInicio,
      Fecha? fechaFin,
      EstadoTrabajo estadoTrabajo});
}

/// @nodoc
class __$TrabajoCopyWithImpl<$Res> extends _$TrabajoCopyWithImpl<$Res>
    implements _$TrabajoCopyWith<$Res> {
  __$TrabajoCopyWithImpl(_Trabajo _value, $Res Function(_Trabajo) _then)
      : super(_value, (v) => _then(v as _Trabajo));

  @override
  _Trabajo get _value => super._value as _Trabajo;

  @override
  $Res call({
    Object? uuidTrabajo = freezed,
    Object? tituloOfertaLaboral = freezed,
    Object? fechaInicio = freezed,
    Object? fechaFin = freezed,
    Object? estadoTrabajo = freezed,
  }) {
    return _then(_Trabajo(
      uuidTrabajo: uuidTrabajo == freezed
          ? _value.uuidTrabajo
          : uuidTrabajo // ignore: cast_nullable_to_non_nullable
              as Identificador,
      tituloOfertaLaboral: tituloOfertaLaboral == freezed
          ? _value.tituloOfertaLaboral
          : tituloOfertaLaboral // ignore: cast_nullable_to_non_nullable
              as TituloTrabajo,
      fechaInicio: fechaInicio == freezed
          ? _value.fechaInicio
          : fechaInicio // ignore: cast_nullable_to_non_nullable
              as Fecha,
      fechaFin: fechaFin == freezed
          ? _value.fechaFin
          : fechaFin // ignore: cast_nullable_to_non_nullable
              as Fecha?,
      estadoTrabajo: estadoTrabajo == freezed
          ? _value.estadoTrabajo
          : estadoTrabajo // ignore: cast_nullable_to_non_nullable
              as EstadoTrabajo,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_Trabajo implements _Trabajo {
  const _$_Trabajo(
      {required this.uuidTrabajo,
      required this.tituloOfertaLaboral,
      required this.fechaInicio,
      this.fechaFin,
      required this.estadoTrabajo});

  @override
  final Identificador uuidTrabajo;
  @override
  final TituloTrabajo tituloOfertaLaboral;
  @override
  final Fecha fechaInicio;
  @override
  final Fecha? fechaFin;
  @override
  final EstadoTrabajo estadoTrabajo;

  @override
  String toString() {
    return 'Trabajo(uuidTrabajo: $uuidTrabajo, tituloOfertaLaboral: $tituloOfertaLaboral, fechaInicio: $fechaInicio, fechaFin: $fechaFin, estadoTrabajo: $estadoTrabajo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Trabajo &&
            (identical(other.uuidTrabajo, uuidTrabajo) ||
                const DeepCollectionEquality()
                    .equals(other.uuidTrabajo, uuidTrabajo)) &&
            (identical(other.tituloOfertaLaboral, tituloOfertaLaboral) ||
                const DeepCollectionEquality()
                    .equals(other.tituloOfertaLaboral, tituloOfertaLaboral)) &&
            (identical(other.fechaInicio, fechaInicio) ||
                const DeepCollectionEquality()
                    .equals(other.fechaInicio, fechaInicio)) &&
            (identical(other.fechaFin, fechaFin) ||
                const DeepCollectionEquality()
                    .equals(other.fechaFin, fechaFin)) &&
            (identical(other.estadoTrabajo, estadoTrabajo) ||
                const DeepCollectionEquality()
                    .equals(other.estadoTrabajo, estadoTrabajo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuidTrabajo) ^
      const DeepCollectionEquality().hash(tituloOfertaLaboral) ^
      const DeepCollectionEquality().hash(fechaInicio) ^
      const DeepCollectionEquality().hash(fechaFin) ^
      const DeepCollectionEquality().hash(estadoTrabajo);

  @JsonKey(ignore: true)
  @override
  _$TrabajoCopyWith<_Trabajo> get copyWith =>
      __$TrabajoCopyWithImpl<_Trabajo>(this, _$identity);
}

abstract class _Trabajo implements Trabajo, IEntidad {
  const factory _Trabajo(
      {required Identificador uuidTrabajo,
      required TituloTrabajo tituloOfertaLaboral,
      required Fecha fechaInicio,
      Fecha? fechaFin,
      required EstadoTrabajo estadoTrabajo}) = _$_Trabajo;

  @override
  Identificador get uuidTrabajo => throw _privateConstructorUsedError;
  @override
  TituloTrabajo get tituloOfertaLaboral => throw _privateConstructorUsedError;
  @override
  Fecha get fechaInicio => throw _privateConstructorUsedError;
  @override
  Fecha? get fechaFin => throw _privateConstructorUsedError;
  @override
  EstadoTrabajo get estadoTrabajo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrabajoCopyWith<_Trabajo> get copyWith =>
      throw _privateConstructorUsedError;
}
