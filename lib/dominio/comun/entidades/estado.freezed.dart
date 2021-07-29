// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'estado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EstadoTearOff {
  const _$EstadoTearOff();

  _Estado call(
      {required Identificador uuid,
      required NombreCiudad nombre,
      required List<Ciudad> ciudades}) {
    return _Estado(
      uuid: uuid,
      nombre: nombre,
      ciudades: ciudades,
    );
  }
}

/// @nodoc
const $Estado = _$EstadoTearOff();

/// @nodoc
mixin _$Estado {
  Identificador get uuid => throw _privateConstructorUsedError;
  NombreCiudad get nombre => throw _privateConstructorUsedError;
  List<Ciudad> get ciudades => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EstadoCopyWith<Estado> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstadoCopyWith<$Res> {
  factory $EstadoCopyWith(Estado value, $Res Function(Estado) then) =
      _$EstadoCopyWithImpl<$Res>;
  $Res call({Identificador uuid, NombreCiudad nombre, List<Ciudad> ciudades});
}

/// @nodoc
class _$EstadoCopyWithImpl<$Res> implements $EstadoCopyWith<$Res> {
  _$EstadoCopyWithImpl(this._value, this._then);

  final Estado _value;
  // ignore: unused_field
  final $Res Function(Estado) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? nombre = freezed,
    Object? ciudades = freezed,
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
      ciudades: ciudades == freezed
          ? _value.ciudades
          : ciudades // ignore: cast_nullable_to_non_nullable
              as List<Ciudad>,
    ));
  }
}

/// @nodoc
abstract class _$EstadoCopyWith<$Res> implements $EstadoCopyWith<$Res> {
  factory _$EstadoCopyWith(_Estado value, $Res Function(_Estado) then) =
      __$EstadoCopyWithImpl<$Res>;
  @override
  $Res call({Identificador uuid, NombreCiudad nombre, List<Ciudad> ciudades});
}

/// @nodoc
class __$EstadoCopyWithImpl<$Res> extends _$EstadoCopyWithImpl<$Res>
    implements _$EstadoCopyWith<$Res> {
  __$EstadoCopyWithImpl(_Estado _value, $Res Function(_Estado) _then)
      : super(_value, (v) => _then(v as _Estado));

  @override
  _Estado get _value => super._value as _Estado;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? nombre = freezed,
    Object? ciudades = freezed,
  }) {
    return _then(_Estado(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as NombreCiudad,
      ciudades: ciudades == freezed
          ? _value.ciudades
          : ciudades // ignore: cast_nullable_to_non_nullable
              as List<Ciudad>,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_Estado implements _Estado {
  const _$_Estado(
      {required this.uuid, required this.nombre, required this.ciudades});

  @override
  final Identificador uuid;
  @override
  final NombreCiudad nombre;
  @override
  final List<Ciudad> ciudades;

  @override
  String toString() {
    return 'Estado(uuid: $uuid, nombre: $nombre, ciudades: $ciudades)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Estado &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.nombre, nombre) ||
                const DeepCollectionEquality().equals(other.nombre, nombre)) &&
            (identical(other.ciudades, ciudades) ||
                const DeepCollectionEquality()
                    .equals(other.ciudades, ciudades)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(nombre) ^
      const DeepCollectionEquality().hash(ciudades);

  @JsonKey(ignore: true)
  @override
  _$EstadoCopyWith<_Estado> get copyWith =>
      __$EstadoCopyWithImpl<_Estado>(this, _$identity);
}

abstract class _Estado implements Estado, IEntidad {
  const factory _Estado(
      {required Identificador uuid,
      required NombreCiudad nombre,
      required List<Ciudad> ciudades}) = _$_Estado;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  NombreCiudad get nombre => throw _privateConstructorUsedError;
  @override
  List<Ciudad> get ciudades => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EstadoCopyWith<_Estado> get copyWith => throw _privateConstructorUsedError;
}
