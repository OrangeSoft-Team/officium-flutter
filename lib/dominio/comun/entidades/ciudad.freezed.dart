// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ciudad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CiudadTearOff {
  const _$CiudadTearOff();

  _Ciudad call({required Identificador uuid, required NombreCiudad nombre}) {
    return _Ciudad(
      uuid: uuid,
      nombre: nombre,
    );
  }
}

/// @nodoc
const $Ciudad = _$CiudadTearOff();

/// @nodoc
mixin _$Ciudad {
  Identificador get uuid => throw _privateConstructorUsedError;
  NombreCiudad get nombre => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CiudadCopyWith<Ciudad> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CiudadCopyWith<$Res> {
  factory $CiudadCopyWith(Ciudad value, $Res Function(Ciudad) then) =
      _$CiudadCopyWithImpl<$Res>;
  $Res call({Identificador uuid, NombreCiudad nombre});
}

/// @nodoc
class _$CiudadCopyWithImpl<$Res> implements $CiudadCopyWith<$Res> {
  _$CiudadCopyWithImpl(this._value, this._then);

  final Ciudad _value;
  // ignore: unused_field
  final $Res Function(Ciudad) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? nombre = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as NombreCiudad,
    ));
  }
}

/// @nodoc
abstract class _$CiudadCopyWith<$Res> implements $CiudadCopyWith<$Res> {
  factory _$CiudadCopyWith(_Ciudad value, $Res Function(_Ciudad) then) =
      __$CiudadCopyWithImpl<$Res>;
  @override
  $Res call({Identificador uuid, NombreCiudad nombre});
}

/// @nodoc
class __$CiudadCopyWithImpl<$Res> extends _$CiudadCopyWithImpl<$Res>
    implements _$CiudadCopyWith<$Res> {
  __$CiudadCopyWithImpl(_Ciudad _value, $Res Function(_Ciudad) _then)
      : super(_value, (v) => _then(v as _Ciudad));

  @override
  _Ciudad get _value => super._value as _Ciudad;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? nombre = freezed,
  }) {
    return _then(_Ciudad(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as NombreCiudad,
    ));
  }
}

/// @nodoc

@Implements(IEntitidad)
class _$_Ciudad implements _Ciudad {
  const _$_Ciudad({required this.uuid, required this.nombre});

  @override
  final Identificador uuid;
  @override
  final NombreCiudad nombre;

  @override
  String toString() {
    return 'Ciudad(uuid: $uuid, nombre: $nombre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ciudad &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.nombre, nombre) ||
                const DeepCollectionEquality().equals(other.nombre, nombre)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(nombre);

  @JsonKey(ignore: true)
  @override
  _$CiudadCopyWith<_Ciudad> get copyWith =>
      __$CiudadCopyWithImpl<_Ciudad>(this, _$identity);
}

abstract class _Ciudad implements Ciudad, IEntitidad {
  const factory _Ciudad(
      {required Identificador uuid, required NombreCiudad nombre}) = _$_Ciudad;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  NombreCiudad get nombre => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CiudadCopyWith<_Ciudad> get copyWith => throw _privateConstructorUsedError;
}
