// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'direccion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DireccionTearOff {
  const _$DireccionTearOff();

  _Direccion call({required Identificador uuid}) {
    return _Direccion(
      uuid: uuid,
    );
  }
}

/// @nodoc
const $Direccion = _$DireccionTearOff();

/// @nodoc
mixin _$Direccion {
  Identificador get uuid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DireccionCopyWith<Direccion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DireccionCopyWith<$Res> {
  factory $DireccionCopyWith(Direccion value, $Res Function(Direccion) then) =
      _$DireccionCopyWithImpl<$Res>;
  $Res call({Identificador uuid});
}

/// @nodoc
class _$DireccionCopyWithImpl<$Res> implements $DireccionCopyWith<$Res> {
  _$DireccionCopyWithImpl(this._value, this._then);

  final Direccion _value;
  // ignore: unused_field
  final $Res Function(Direccion) _then;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc
abstract class _$DireccionCopyWith<$Res> implements $DireccionCopyWith<$Res> {
  factory _$DireccionCopyWith(
          _Direccion value, $Res Function(_Direccion) then) =
      __$DireccionCopyWithImpl<$Res>;
  @override
  $Res call({Identificador uuid});
}

/// @nodoc
class __$DireccionCopyWithImpl<$Res> extends _$DireccionCopyWithImpl<$Res>
    implements _$DireccionCopyWith<$Res> {
  __$DireccionCopyWithImpl(_Direccion _value, $Res Function(_Direccion) _then)
      : super(_value, (v) => _then(v as _Direccion));

  @override
  _Direccion get _value => super._value as _Direccion;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_Direccion(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

@Implements(IEntitidad)
class _$_Direccion implements _Direccion {
  const _$_Direccion({required this.uuid});

  @override
  final Identificador uuid;

  @override
  String toString() {
    return 'Direccion(uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Direccion &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuid);

  @JsonKey(ignore: true)
  @override
  _$DireccionCopyWith<_Direccion> get copyWith =>
      __$DireccionCopyWithImpl<_Direccion>(this, _$identity);
}

abstract class _Direccion implements Direccion, IEntitidad {
  const factory _Direccion({required Identificador uuid}) = _$_Direccion;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DireccionCopyWith<_Direccion> get copyWith =>
      throw _privateConstructorUsedError;
}
