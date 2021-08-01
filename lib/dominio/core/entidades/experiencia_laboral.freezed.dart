// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experiencia_laboral.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperienciaLaboralTearOff {
  const _$ExperienciaLaboralTearOff();

  _ExperienciaLaboral call(
      {required Identificador uuid,
      required Cargo cargo,
      required NombreEmpresa nombreEmpresa,
      required Fecha fechaInicio,
      Fecha? fechaFin}) {
    return _ExperienciaLaboral(
      uuid: uuid,
      cargo: cargo,
      nombreEmpresa: nombreEmpresa,
      fechaInicio: fechaInicio,
      fechaFin: fechaFin,
    );
  }
}

/// @nodoc
const $ExperienciaLaboral = _$ExperienciaLaboralTearOff();

/// @nodoc
mixin _$ExperienciaLaboral {
  Identificador get uuid => throw _privateConstructorUsedError;
  Cargo get cargo => throw _privateConstructorUsedError;
  NombreEmpresa get nombreEmpresa => throw _privateConstructorUsedError;
  Fecha get fechaInicio => throw _privateConstructorUsedError;
  Fecha? get fechaFin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienciaLaboralCopyWith<ExperienciaLaboral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienciaLaboralCopyWith<$Res> {
  factory $ExperienciaLaboralCopyWith(
          ExperienciaLaboral value, $Res Function(ExperienciaLaboral) then) =
      _$ExperienciaLaboralCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuid,
      Cargo cargo,
      NombreEmpresa nombreEmpresa,
      Fecha fechaInicio,
      Fecha? fechaFin});
}

/// @nodoc
class _$ExperienciaLaboralCopyWithImpl<$Res>
    implements $ExperienciaLaboralCopyWith<$Res> {
  _$ExperienciaLaboralCopyWithImpl(this._value, this._then);

  final ExperienciaLaboral _value;
  // ignore: unused_field
  final $Res Function(ExperienciaLaboral) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? cargo = freezed,
    Object? nombreEmpresa = freezed,
    Object? fechaInicio = freezed,
    Object? fechaFin = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      cargo: cargo == freezed
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as Cargo,
      nombreEmpresa: nombreEmpresa == freezed
          ? _value.nombreEmpresa
          : nombreEmpresa // ignore: cast_nullable_to_non_nullable
              as NombreEmpresa,
      fechaInicio: fechaInicio == freezed
          ? _value.fechaInicio
          : fechaInicio // ignore: cast_nullable_to_non_nullable
              as Fecha,
      fechaFin: fechaFin == freezed
          ? _value.fechaFin
          : fechaFin // ignore: cast_nullable_to_non_nullable
              as Fecha?,
    ));
  }
}

/// @nodoc
abstract class _$ExperienciaLaboralCopyWith<$Res>
    implements $ExperienciaLaboralCopyWith<$Res> {
  factory _$ExperienciaLaboralCopyWith(
          _ExperienciaLaboral value, $Res Function(_ExperienciaLaboral) then) =
      __$ExperienciaLaboralCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identificador uuid,
      Cargo cargo,
      NombreEmpresa nombreEmpresa,
      Fecha fechaInicio,
      Fecha? fechaFin});
}

/// @nodoc
class __$ExperienciaLaboralCopyWithImpl<$Res>
    extends _$ExperienciaLaboralCopyWithImpl<$Res>
    implements _$ExperienciaLaboralCopyWith<$Res> {
  __$ExperienciaLaboralCopyWithImpl(
      _ExperienciaLaboral _value, $Res Function(_ExperienciaLaboral) _then)
      : super(_value, (v) => _then(v as _ExperienciaLaboral));

  @override
  _ExperienciaLaboral get _value => super._value as _ExperienciaLaboral;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? cargo = freezed,
    Object? nombreEmpresa = freezed,
    Object? fechaInicio = freezed,
    Object? fechaFin = freezed,
  }) {
    return _then(_ExperienciaLaboral(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      cargo: cargo == freezed
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as Cargo,
      nombreEmpresa: nombreEmpresa == freezed
          ? _value.nombreEmpresa
          : nombreEmpresa // ignore: cast_nullable_to_non_nullable
              as NombreEmpresa,
      fechaInicio: fechaInicio == freezed
          ? _value.fechaInicio
          : fechaInicio // ignore: cast_nullable_to_non_nullable
              as Fecha,
      fechaFin: fechaFin == freezed
          ? _value.fechaFin
          : fechaFin // ignore: cast_nullable_to_non_nullable
              as Fecha?,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_ExperienciaLaboral extends _ExperienciaLaboral {
  const _$_ExperienciaLaboral(
      {required this.uuid,
      required this.cargo,
      required this.nombreEmpresa,
      required this.fechaInicio,
      this.fechaFin})
      : super._();

  @override
  final Identificador uuid;
  @override
  final Cargo cargo;
  @override
  final NombreEmpresa nombreEmpresa;
  @override
  final Fecha fechaInicio;
  @override
  final Fecha? fechaFin;

  @override
  String toString() {
    return 'ExperienciaLaboral(uuid: $uuid, cargo: $cargo, nombreEmpresa: $nombreEmpresa, fechaInicio: $fechaInicio, fechaFin: $fechaFin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienciaLaboral &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.cargo, cargo) ||
                const DeepCollectionEquality().equals(other.cargo, cargo)) &&
            (identical(other.nombreEmpresa, nombreEmpresa) ||
                const DeepCollectionEquality()
                    .equals(other.nombreEmpresa, nombreEmpresa)) &&
            (identical(other.fechaInicio, fechaInicio) ||
                const DeepCollectionEquality()
                    .equals(other.fechaInicio, fechaInicio)) &&
            (identical(other.fechaFin, fechaFin) ||
                const DeepCollectionEquality()
                    .equals(other.fechaFin, fechaFin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(cargo) ^
      const DeepCollectionEquality().hash(nombreEmpresa) ^
      const DeepCollectionEquality().hash(fechaInicio) ^
      const DeepCollectionEquality().hash(fechaFin);

  @JsonKey(ignore: true)
  @override
  _$ExperienciaLaboralCopyWith<_ExperienciaLaboral> get copyWith =>
      __$ExperienciaLaboralCopyWithImpl<_ExperienciaLaboral>(this, _$identity);
}

abstract class _ExperienciaLaboral extends ExperienciaLaboral
    implements IEntidad {
  const factory _ExperienciaLaboral(
      {required Identificador uuid,
      required Cargo cargo,
      required NombreEmpresa nombreEmpresa,
      required Fecha fechaInicio,
      Fecha? fechaFin}) = _$_ExperienciaLaboral;
  const _ExperienciaLaboral._() : super._();

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  Cargo get cargo => throw _privateConstructorUsedError;
  @override
  NombreEmpresa get nombreEmpresa => throw _privateConstructorUsedError;
  @override
  Fecha get fechaInicio => throw _privateConstructorUsedError;
  @override
  Fecha? get fechaFin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExperienciaLaboralCopyWith<_ExperienciaLaboral> get copyWith =>
      throw _privateConstructorUsedError;
}
