// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'respuesta_cuestionario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RespuestaCuestionarioTearOff {
  const _$RespuestaCuestionarioTearOff();

  _RespuestaCuestionario call(
      {required Identificador uuid,
      required Identificador uuidOpcionPregunta,
      required Identificador uuidOpcion}) {
    return _RespuestaCuestionario(
      uuid: uuid,
      uuidOpcionPregunta: uuidOpcionPregunta,
      uuidOpcion: uuidOpcion,
    );
  }
}

/// @nodoc
const $RespuestaCuestionario = _$RespuestaCuestionarioTearOff();

/// @nodoc
mixin _$RespuestaCuestionario {
  Identificador get uuid => throw _privateConstructorUsedError;
  Identificador get uuidOpcionPregunta => throw _privateConstructorUsedError;
  Identificador get uuidOpcion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RespuestaCuestionarioCopyWith<RespuestaCuestionario> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespuestaCuestionarioCopyWith<$Res> {
  factory $RespuestaCuestionarioCopyWith(RespuestaCuestionario value,
          $Res Function(RespuestaCuestionario) then) =
      _$RespuestaCuestionarioCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuid,
      Identificador uuidOpcionPregunta,
      Identificador uuidOpcion});
}

/// @nodoc
class _$RespuestaCuestionarioCopyWithImpl<$Res>
    implements $RespuestaCuestionarioCopyWith<$Res> {
  _$RespuestaCuestionarioCopyWithImpl(this._value, this._then);

  final RespuestaCuestionario _value;
  // ignore: unused_field
  final $Res Function(RespuestaCuestionario) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? uuidOpcionPregunta = freezed,
    Object? uuidOpcion = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      uuidOpcionPregunta: uuidOpcionPregunta == freezed
          ? _value.uuidOpcionPregunta
          : uuidOpcionPregunta // ignore: cast_nullable_to_non_nullable
              as Identificador,
      uuidOpcion: uuidOpcion == freezed
          ? _value.uuidOpcion
          : uuidOpcion // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc
abstract class _$RespuestaCuestionarioCopyWith<$Res>
    implements $RespuestaCuestionarioCopyWith<$Res> {
  factory _$RespuestaCuestionarioCopyWith(_RespuestaCuestionario value,
          $Res Function(_RespuestaCuestionario) then) =
      __$RespuestaCuestionarioCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identificador uuid,
      Identificador uuidOpcionPregunta,
      Identificador uuidOpcion});
}

/// @nodoc
class __$RespuestaCuestionarioCopyWithImpl<$Res>
    extends _$RespuestaCuestionarioCopyWithImpl<$Res>
    implements _$RespuestaCuestionarioCopyWith<$Res> {
  __$RespuestaCuestionarioCopyWithImpl(_RespuestaCuestionario _value,
      $Res Function(_RespuestaCuestionario) _then)
      : super(_value, (v) => _then(v as _RespuestaCuestionario));

  @override
  _RespuestaCuestionario get _value => super._value as _RespuestaCuestionario;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? uuidOpcionPregunta = freezed,
    Object? uuidOpcion = freezed,
  }) {
    return _then(_RespuestaCuestionario(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      uuidOpcionPregunta: uuidOpcionPregunta == freezed
          ? _value.uuidOpcionPregunta
          : uuidOpcionPregunta // ignore: cast_nullable_to_non_nullable
              as Identificador,
      uuidOpcion: uuidOpcion == freezed
          ? _value.uuidOpcion
          : uuidOpcion // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_RespuestaCuestionario implements _RespuestaCuestionario {
  const _$_RespuestaCuestionario(
      {required this.uuid,
      required this.uuidOpcionPregunta,
      required this.uuidOpcion});

  @override
  final Identificador uuid;
  @override
  final Identificador uuidOpcionPregunta;
  @override
  final Identificador uuidOpcion;

  @override
  String toString() {
    return 'RespuestaCuestionario(uuid: $uuid, uuidOpcionPregunta: $uuidOpcionPregunta, uuidOpcion: $uuidOpcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RespuestaCuestionario &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.uuidOpcionPregunta, uuidOpcionPregunta) ||
                const DeepCollectionEquality()
                    .equals(other.uuidOpcionPregunta, uuidOpcionPregunta)) &&
            (identical(other.uuidOpcion, uuidOpcion) ||
                const DeepCollectionEquality()
                    .equals(other.uuidOpcion, uuidOpcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(uuidOpcionPregunta) ^
      const DeepCollectionEquality().hash(uuidOpcion);

  @JsonKey(ignore: true)
  @override
  _$RespuestaCuestionarioCopyWith<_RespuestaCuestionario> get copyWith =>
      __$RespuestaCuestionarioCopyWithImpl<_RespuestaCuestionario>(
          this, _$identity);
}

abstract class _RespuestaCuestionario
    implements RespuestaCuestionario, IEntidad {
  const factory _RespuestaCuestionario(
      {required Identificador uuid,
      required Identificador uuidOpcionPregunta,
      required Identificador uuidOpcion}) = _$_RespuestaCuestionario;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  Identificador get uuidOpcionPregunta => throw _privateConstructorUsedError;
  @override
  Identificador get uuidOpcion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RespuestaCuestionarioCopyWith<_RespuestaCuestionario> get copyWith =>
      throw _privateConstructorUsedError;
}
