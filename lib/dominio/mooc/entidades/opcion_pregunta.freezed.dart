// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'opcion_pregunta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OpcionPreguntaTearOff {
  const _$OpcionPreguntaTearOff();

  _OpcionPregunta call(
      {required Identificador uuid, required ValorPregunta valorPregunta}) {
    return _OpcionPregunta(
      uuid: uuid,
      valorPregunta: valorPregunta,
    );
  }
}

/// @nodoc
const $OpcionPregunta = _$OpcionPreguntaTearOff();

/// @nodoc
mixin _$OpcionPregunta {
  Identificador get uuid => throw _privateConstructorUsedError;
  ValorPregunta get valorPregunta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpcionPreguntaCopyWith<OpcionPregunta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpcionPreguntaCopyWith<$Res> {
  factory $OpcionPreguntaCopyWith(
          OpcionPregunta value, $Res Function(OpcionPregunta) then) =
      _$OpcionPreguntaCopyWithImpl<$Res>;
  $Res call({Identificador uuid, ValorPregunta valorPregunta});
}

/// @nodoc
class _$OpcionPreguntaCopyWithImpl<$Res>
    implements $OpcionPreguntaCopyWith<$Res> {
  _$OpcionPreguntaCopyWithImpl(this._value, this._then);

  final OpcionPregunta _value;
  // ignore: unused_field
  final $Res Function(OpcionPregunta) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? valorPregunta = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      valorPregunta: valorPregunta == freezed
          ? _value.valorPregunta
          : valorPregunta // ignore: cast_nullable_to_non_nullable
              as ValorPregunta,
    ));
  }
}

/// @nodoc
abstract class _$OpcionPreguntaCopyWith<$Res>
    implements $OpcionPreguntaCopyWith<$Res> {
  factory _$OpcionPreguntaCopyWith(
          _OpcionPregunta value, $Res Function(_OpcionPregunta) then) =
      __$OpcionPreguntaCopyWithImpl<$Res>;
  @override
  $Res call({Identificador uuid, ValorPregunta valorPregunta});
}

/// @nodoc
class __$OpcionPreguntaCopyWithImpl<$Res>
    extends _$OpcionPreguntaCopyWithImpl<$Res>
    implements _$OpcionPreguntaCopyWith<$Res> {
  __$OpcionPreguntaCopyWithImpl(
      _OpcionPregunta _value, $Res Function(_OpcionPregunta) _then)
      : super(_value, (v) => _then(v as _OpcionPregunta));

  @override
  _OpcionPregunta get _value => super._value as _OpcionPregunta;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? valorPregunta = freezed,
  }) {
    return _then(_OpcionPregunta(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      valorPregunta: valorPregunta == freezed
          ? _value.valorPregunta
          : valorPregunta // ignore: cast_nullable_to_non_nullable
              as ValorPregunta,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_OpcionPregunta implements _OpcionPregunta {
  const _$_OpcionPregunta({required this.uuid, required this.valorPregunta});

  @override
  final Identificador uuid;
  @override
  final ValorPregunta valorPregunta;

  @override
  String toString() {
    return 'OpcionPregunta(uuid: $uuid, valorPregunta: $valorPregunta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OpcionPregunta &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.valorPregunta, valorPregunta) ||
                const DeepCollectionEquality()
                    .equals(other.valorPregunta, valorPregunta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(valorPregunta);

  @JsonKey(ignore: true)
  @override
  _$OpcionPreguntaCopyWith<_OpcionPregunta> get copyWith =>
      __$OpcionPreguntaCopyWithImpl<_OpcionPregunta>(this, _$identity);
}

abstract class _OpcionPregunta implements OpcionPregunta, IEntidad {
  const factory _OpcionPregunta(
      {required Identificador uuid,
      required ValorPregunta valorPregunta}) = _$_OpcionPregunta;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  ValorPregunta get valorPregunta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OpcionPreguntaCopyWith<_OpcionPregunta> get copyWith =>
      throw _privateConstructorUsedError;
}
