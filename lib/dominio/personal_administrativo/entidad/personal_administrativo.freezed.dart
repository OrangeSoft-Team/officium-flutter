// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'personal_administrativo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PersonalAdministrativoTearOff {
  const _$PersonalAdministrativoTearOff();

  _PersonalAdministrativo call(
      {required Identificador uuid,
      required PrimerNombre primerNombre,
      required PrimerApellido primerApellido,
      required Cargo cargo}) {
    return _PersonalAdministrativo(
      uuid: uuid,
      primerNombre: primerNombre,
      primerApellido: primerApellido,
      cargo: cargo,
    );
  }
}

/// @nodoc
const $PersonalAdministrativo = _$PersonalAdministrativoTearOff();

/// @nodoc
mixin _$PersonalAdministrativo {
  Identificador get uuid => throw _privateConstructorUsedError;
  PrimerNombre get primerNombre => throw _privateConstructorUsedError;
  PrimerApellido get primerApellido => throw _privateConstructorUsedError;
  Cargo get cargo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalAdministrativoCopyWith<PersonalAdministrativo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalAdministrativoCopyWith<$Res> {
  factory $PersonalAdministrativoCopyWith(PersonalAdministrativo value,
          $Res Function(PersonalAdministrativo) then) =
      _$PersonalAdministrativoCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuid,
      PrimerNombre primerNombre,
      PrimerApellido primerApellido,
      Cargo cargo});
}

/// @nodoc
class _$PersonalAdministrativoCopyWithImpl<$Res>
    implements $PersonalAdministrativoCopyWith<$Res> {
  _$PersonalAdministrativoCopyWithImpl(this._value, this._then);

  final PersonalAdministrativo _value;
  // ignore: unused_field
  final $Res Function(PersonalAdministrativo) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? primerNombre = freezed,
    Object? primerApellido = freezed,
    Object? cargo = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      primerNombre: primerNombre == freezed
          ? _value.primerNombre
          : primerNombre // ignore: cast_nullable_to_non_nullable
              as PrimerNombre,
      primerApellido: primerApellido == freezed
          ? _value.primerApellido
          : primerApellido // ignore: cast_nullable_to_non_nullable
              as PrimerApellido,
      cargo: cargo == freezed
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as Cargo,
    ));
  }
}

/// @nodoc
abstract class _$PersonalAdministrativoCopyWith<$Res>
    implements $PersonalAdministrativoCopyWith<$Res> {
  factory _$PersonalAdministrativoCopyWith(_PersonalAdministrativo value,
          $Res Function(_PersonalAdministrativo) then) =
      __$PersonalAdministrativoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identificador uuid,
      PrimerNombre primerNombre,
      PrimerApellido primerApellido,
      Cargo cargo});
}

/// @nodoc
class __$PersonalAdministrativoCopyWithImpl<$Res>
    extends _$PersonalAdministrativoCopyWithImpl<$Res>
    implements _$PersonalAdministrativoCopyWith<$Res> {
  __$PersonalAdministrativoCopyWithImpl(_PersonalAdministrativo _value,
      $Res Function(_PersonalAdministrativo) _then)
      : super(_value, (v) => _then(v as _PersonalAdministrativo));

  @override
  _PersonalAdministrativo get _value => super._value as _PersonalAdministrativo;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? primerNombre = freezed,
    Object? primerApellido = freezed,
    Object? cargo = freezed,
  }) {
    return _then(_PersonalAdministrativo(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      primerNombre: primerNombre == freezed
          ? _value.primerNombre
          : primerNombre // ignore: cast_nullable_to_non_nullable
              as PrimerNombre,
      primerApellido: primerApellido == freezed
          ? _value.primerApellido
          : primerApellido // ignore: cast_nullable_to_non_nullable
              as PrimerApellido,
      cargo: cargo == freezed
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as Cargo,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_PersonalAdministrativo implements _PersonalAdministrativo {
  const _$_PersonalAdministrativo(
      {required this.uuid,
      required this.primerNombre,
      required this.primerApellido,
      required this.cargo});

  @override
  final Identificador uuid;
  @override
  final PrimerNombre primerNombre;
  @override
  final PrimerApellido primerApellido;
  @override
  final Cargo cargo;

  @override
  String toString() {
    return 'PersonalAdministrativo(uuid: $uuid, primerNombre: $primerNombre, primerApellido: $primerApellido, cargo: $cargo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalAdministrativo &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.primerNombre, primerNombre) ||
                const DeepCollectionEquality()
                    .equals(other.primerNombre, primerNombre)) &&
            (identical(other.primerApellido, primerApellido) ||
                const DeepCollectionEquality()
                    .equals(other.primerApellido, primerApellido)) &&
            (identical(other.cargo, cargo) ||
                const DeepCollectionEquality().equals(other.cargo, cargo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(primerNombre) ^
      const DeepCollectionEquality().hash(primerApellido) ^
      const DeepCollectionEquality().hash(cargo);

  @JsonKey(ignore: true)
  @override
  _$PersonalAdministrativoCopyWith<_PersonalAdministrativo> get copyWith =>
      __$PersonalAdministrativoCopyWithImpl<_PersonalAdministrativo>(
          this, _$identity);
}

abstract class _PersonalAdministrativo
    implements PersonalAdministrativo, IEntidad {
  const factory _PersonalAdministrativo(
      {required Identificador uuid,
      required PrimerNombre primerNombre,
      required PrimerApellido primerApellido,
      required Cargo cargo}) = _$_PersonalAdministrativo;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  PrimerNombre get primerNombre => throw _privateConstructorUsedError;
  @override
  PrimerApellido get primerApellido => throw _privateConstructorUsedError;
  @override
  Cargo get cargo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonalAdministrativoCopyWith<_PersonalAdministrativo> get copyWith =>
      throw _privateConstructorUsedError;
}
