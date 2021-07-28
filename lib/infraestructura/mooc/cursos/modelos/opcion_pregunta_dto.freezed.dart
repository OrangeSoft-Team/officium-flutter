// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'opcion_pregunta_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpcionPreguntaDTO _$OpcionPreguntaDTOFromJson(Map<String, dynamic> json) {
  return _OpcionPreguntaDTO.fromJson(json);
}

/// @nodoc
class _$OpcionPreguntaDTOTearOff {
  const _$OpcionPreguntaDTOTearOff();

  _OpcionPreguntaDTO call({required String uuid}) {
    return _OpcionPreguntaDTO(
      uuid: uuid,
    );
  }

  OpcionPreguntaDTO fromJson(Map<String, Object> json) {
    return OpcionPreguntaDTO.fromJson(json);
  }
}

/// @nodoc
const $OpcionPreguntaDTO = _$OpcionPreguntaDTOTearOff();

/// @nodoc
mixin _$OpcionPreguntaDTO {
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpcionPreguntaDTOCopyWith<OpcionPreguntaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpcionPreguntaDTOCopyWith<$Res> {
  factory $OpcionPreguntaDTOCopyWith(
          OpcionPreguntaDTO value, $Res Function(OpcionPreguntaDTO) then) =
      _$OpcionPreguntaDTOCopyWithImpl<$Res>;
  $Res call({String uuid});
}

/// @nodoc
class _$OpcionPreguntaDTOCopyWithImpl<$Res>
    implements $OpcionPreguntaDTOCopyWith<$Res> {
  _$OpcionPreguntaDTOCopyWithImpl(this._value, this._then);

  final OpcionPreguntaDTO _value;
  // ignore: unused_field
  final $Res Function(OpcionPreguntaDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OpcionPreguntaDTOCopyWith<$Res>
    implements $OpcionPreguntaDTOCopyWith<$Res> {
  factory _$OpcionPreguntaDTOCopyWith(
          _OpcionPreguntaDTO value, $Res Function(_OpcionPreguntaDTO) then) =
      __$OpcionPreguntaDTOCopyWithImpl<$Res>;
  @override
  $Res call({String uuid});
}

/// @nodoc
class __$OpcionPreguntaDTOCopyWithImpl<$Res>
    extends _$OpcionPreguntaDTOCopyWithImpl<$Res>
    implements _$OpcionPreguntaDTOCopyWith<$Res> {
  __$OpcionPreguntaDTOCopyWithImpl(
      _OpcionPreguntaDTO _value, $Res Function(_OpcionPreguntaDTO) _then)
      : super(_value, (v) => _then(v as _OpcionPreguntaDTO));

  @override
  _OpcionPreguntaDTO get _value => super._value as _OpcionPreguntaDTO;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_OpcionPreguntaDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpcionPreguntaDTO extends _OpcionPreguntaDTO {
  _$_OpcionPreguntaDTO({required this.uuid}) : super._();

  factory _$_OpcionPreguntaDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_OpcionPreguntaDTOFromJson(json);

  @override
  final String uuid;

  @override
  String toString() {
    return 'OpcionPreguntaDTO(uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OpcionPreguntaDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuid);

  @JsonKey(ignore: true)
  @override
  _$OpcionPreguntaDTOCopyWith<_OpcionPreguntaDTO> get copyWith =>
      __$OpcionPreguntaDTOCopyWithImpl<_OpcionPreguntaDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OpcionPreguntaDTOToJson(this);
  }
}

abstract class _OpcionPreguntaDTO extends OpcionPreguntaDTO {
  factory _OpcionPreguntaDTO({required String uuid}) = _$_OpcionPreguntaDTO;
  _OpcionPreguntaDTO._() : super._();

  factory _OpcionPreguntaDTO.fromJson(Map<String, dynamic> json) =
      _$_OpcionPreguntaDTO.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OpcionPreguntaDTOCopyWith<_OpcionPreguntaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
