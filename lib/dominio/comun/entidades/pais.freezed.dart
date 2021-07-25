// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pais.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaisTearOff {
  const _$PaisTearOff();

  _Pais call(
      {required Identificador uuid,
      required NombrePais nombre,
      required List<Estado> ciudades}) {
    return _Pais(
      uuid: uuid,
      nombre: nombre,
      ciudades: ciudades,
    );
  }
}

/// @nodoc
const $Pais = _$PaisTearOff();

/// @nodoc
mixin _$Pais {
  Identificador get uuid => throw _privateConstructorUsedError;
  NombrePais get nombre => throw _privateConstructorUsedError;
  List<Estado> get ciudades => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaisCopyWith<Pais> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaisCopyWith<$Res> {
  factory $PaisCopyWith(Pais value, $Res Function(Pais) then) =
      _$PaisCopyWithImpl<$Res>;
  $Res call({Identificador uuid, NombrePais nombre, List<Estado> ciudades});
}

/// @nodoc
class _$PaisCopyWithImpl<$Res> implements $PaisCopyWith<$Res> {
  _$PaisCopyWithImpl(this._value, this._then);

  final Pais _value;
  // ignore: unused_field
  final $Res Function(Pais) _then;

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
              as NombrePais,
      ciudades: ciudades == freezed
          ? _value.ciudades
          : ciudades // ignore: cast_nullable_to_non_nullable
              as List<Estado>,
    ));
  }
}

/// @nodoc
abstract class _$PaisCopyWith<$Res> implements $PaisCopyWith<$Res> {
  factory _$PaisCopyWith(_Pais value, $Res Function(_Pais) then) =
      __$PaisCopyWithImpl<$Res>;
  @override
  $Res call({Identificador uuid, NombrePais nombre, List<Estado> ciudades});
}

/// @nodoc
class __$PaisCopyWithImpl<$Res> extends _$PaisCopyWithImpl<$Res>
    implements _$PaisCopyWith<$Res> {
  __$PaisCopyWithImpl(_Pais _value, $Res Function(_Pais) _then)
      : super(_value, (v) => _then(v as _Pais));

  @override
  _Pais get _value => super._value as _Pais;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? nombre = freezed,
    Object? ciudades = freezed,
  }) {
    return _then(_Pais(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as NombrePais,
      ciudades: ciudades == freezed
          ? _value.ciudades
          : ciudades // ignore: cast_nullable_to_non_nullable
              as List<Estado>,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_Pais implements _Pais {
  const _$_Pais(
      {required this.uuid, required this.nombre, required this.ciudades});

  @override
  final Identificador uuid;
  @override
  final NombrePais nombre;
  @override
  final List<Estado> ciudades;

  @override
  String toString() {
    return 'Pais(uuid: $uuid, nombre: $nombre, ciudades: $ciudades)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pais &&
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
  _$PaisCopyWith<_Pais> get copyWith =>
      __$PaisCopyWithImpl<_Pais>(this, _$identity);
}

abstract class _Pais implements Pais, IEntidad {
  const factory _Pais(
      {required Identificador uuid,
      required NombrePais nombre,
      required List<Estado> ciudades}) = _$_Pais;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  NombrePais get nombre => throw _privateConstructorUsedError;
  @override
  List<Estado> get ciudades => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaisCopyWith<_Pais> get copyWith => throw _privateConstructorUsedError;
}
