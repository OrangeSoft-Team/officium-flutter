// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'habilidades_empleado_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HabilidadesEmpleadoDTO _$HabilidadesEmpleadoDTOFromJson(
    Map<String, dynamic> json) {
  return _HabilidadesEmpleadoDTO.fromJson(json);
}

/// @nodoc
class _$HabilidadesEmpleadoDTOTearOff {
  const _$HabilidadesEmpleadoDTOTearOff();

  _HabilidadesEmpleadoDTO call({required List<String> uuid}) {
    return _HabilidadesEmpleadoDTO(
      uuid: uuid,
    );
  }

  HabilidadesEmpleadoDTO fromJson(Map<String, Object> json) {
    return HabilidadesEmpleadoDTO.fromJson(json);
  }
}

/// @nodoc
const $HabilidadesEmpleadoDTO = _$HabilidadesEmpleadoDTOTearOff();

/// @nodoc
mixin _$HabilidadesEmpleadoDTO {
  List<String> get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabilidadesEmpleadoDTOCopyWith<HabilidadesEmpleadoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabilidadesEmpleadoDTOCopyWith<$Res> {
  factory $HabilidadesEmpleadoDTOCopyWith(HabilidadesEmpleadoDTO value,
          $Res Function(HabilidadesEmpleadoDTO) then) =
      _$HabilidadesEmpleadoDTOCopyWithImpl<$Res>;
  $Res call({List<String> uuid});
}

/// @nodoc
class _$HabilidadesEmpleadoDTOCopyWithImpl<$Res>
    implements $HabilidadesEmpleadoDTOCopyWith<$Res> {
  _$HabilidadesEmpleadoDTOCopyWithImpl(this._value, this._then);

  final HabilidadesEmpleadoDTO _value;
  // ignore: unused_field
  final $Res Function(HabilidadesEmpleadoDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$HabilidadesEmpleadoDTOCopyWith<$Res>
    implements $HabilidadesEmpleadoDTOCopyWith<$Res> {
  factory _$HabilidadesEmpleadoDTOCopyWith(_HabilidadesEmpleadoDTO value,
          $Res Function(_HabilidadesEmpleadoDTO) then) =
      __$HabilidadesEmpleadoDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<String> uuid});
}

/// @nodoc
class __$HabilidadesEmpleadoDTOCopyWithImpl<$Res>
    extends _$HabilidadesEmpleadoDTOCopyWithImpl<$Res>
    implements _$HabilidadesEmpleadoDTOCopyWith<$Res> {
  __$HabilidadesEmpleadoDTOCopyWithImpl(_HabilidadesEmpleadoDTO _value,
      $Res Function(_HabilidadesEmpleadoDTO) _then)
      : super(_value, (v) => _then(v as _HabilidadesEmpleadoDTO));

  @override
  _HabilidadesEmpleadoDTO get _value => super._value as _HabilidadesEmpleadoDTO;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_HabilidadesEmpleadoDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HabilidadesEmpleadoDTO extends _HabilidadesEmpleadoDTO {
  _$_HabilidadesEmpleadoDTO({required this.uuid}) : super._();

  factory _$_HabilidadesEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_HabilidadesEmpleadoDTOFromJson(json);

  @override
  final List<String> uuid;

  @override
  String toString() {
    return 'HabilidadesEmpleadoDTO(uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HabilidadesEmpleadoDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuid);

  @JsonKey(ignore: true)
  @override
  _$HabilidadesEmpleadoDTOCopyWith<_HabilidadesEmpleadoDTO> get copyWith =>
      __$HabilidadesEmpleadoDTOCopyWithImpl<_HabilidadesEmpleadoDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HabilidadesEmpleadoDTOToJson(this);
  }
}

abstract class _HabilidadesEmpleadoDTO extends HabilidadesEmpleadoDTO {
  factory _HabilidadesEmpleadoDTO({required List<String> uuid}) =
      _$_HabilidadesEmpleadoDTO;
  _HabilidadesEmpleadoDTO._() : super._();

  factory _HabilidadesEmpleadoDTO.fromJson(Map<String, dynamic> json) =
      _$_HabilidadesEmpleadoDTO.fromJson;

  @override
  List<String> get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HabilidadesEmpleadoDTOCopyWith<_HabilidadesEmpleadoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
