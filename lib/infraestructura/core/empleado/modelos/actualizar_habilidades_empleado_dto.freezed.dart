// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'actualizar_habilidades_empleado_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActualizarHabilidadesEmpleadoDTO _$ActualizarHabilidadesEmpleadoDTOFromJson(
    Map<String, dynamic> json) {
  return _ActualizarHabilidadesEmpleadoDTO.fromJson(json);
}

/// @nodoc
class _$ActualizarHabilidadesEmpleadoDTOTearOff {
  const _$ActualizarHabilidadesEmpleadoDTOTearOff();

  _ActualizarHabilidadesEmpleadoDTO call({required List<String> uuid}) {
    return _ActualizarHabilidadesEmpleadoDTO(
      uuid: uuid,
    );
  }

  ActualizarHabilidadesEmpleadoDTO fromJson(Map<String, Object> json) {
    return ActualizarHabilidadesEmpleadoDTO.fromJson(json);
  }
}

/// @nodoc
const $ActualizarHabilidadesEmpleadoDTO =
    _$ActualizarHabilidadesEmpleadoDTOTearOff();

/// @nodoc
mixin _$ActualizarHabilidadesEmpleadoDTO {
  List<String> get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActualizarHabilidadesEmpleadoDTOCopyWith<ActualizarHabilidadesEmpleadoDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActualizarHabilidadesEmpleadoDTOCopyWith<$Res> {
  factory $ActualizarHabilidadesEmpleadoDTOCopyWith(
          ActualizarHabilidadesEmpleadoDTO value,
          $Res Function(ActualizarHabilidadesEmpleadoDTO) then) =
      _$ActualizarHabilidadesEmpleadoDTOCopyWithImpl<$Res>;
  $Res call({List<String> uuid});
}

/// @nodoc
class _$ActualizarHabilidadesEmpleadoDTOCopyWithImpl<$Res>
    implements $ActualizarHabilidadesEmpleadoDTOCopyWith<$Res> {
  _$ActualizarHabilidadesEmpleadoDTOCopyWithImpl(this._value, this._then);

  final ActualizarHabilidadesEmpleadoDTO _value;
  // ignore: unused_field
  final $Res Function(ActualizarHabilidadesEmpleadoDTO) _then;

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
abstract class _$ActualizarHabilidadesEmpleadoDTOCopyWith<$Res>
    implements $ActualizarHabilidadesEmpleadoDTOCopyWith<$Res> {
  factory _$ActualizarHabilidadesEmpleadoDTOCopyWith(
          _ActualizarHabilidadesEmpleadoDTO value,
          $Res Function(_ActualizarHabilidadesEmpleadoDTO) then) =
      __$ActualizarHabilidadesEmpleadoDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<String> uuid});
}

/// @nodoc
class __$ActualizarHabilidadesEmpleadoDTOCopyWithImpl<$Res>
    extends _$ActualizarHabilidadesEmpleadoDTOCopyWithImpl<$Res>
    implements _$ActualizarHabilidadesEmpleadoDTOCopyWith<$Res> {
  __$ActualizarHabilidadesEmpleadoDTOCopyWithImpl(
      _ActualizarHabilidadesEmpleadoDTO _value,
      $Res Function(_ActualizarHabilidadesEmpleadoDTO) _then)
      : super(_value, (v) => _then(v as _ActualizarHabilidadesEmpleadoDTO));

  @override
  _ActualizarHabilidadesEmpleadoDTO get _value =>
      super._value as _ActualizarHabilidadesEmpleadoDTO;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_ActualizarHabilidadesEmpleadoDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActualizarHabilidadesEmpleadoDTO
    extends _ActualizarHabilidadesEmpleadoDTO {
  _$_ActualizarHabilidadesEmpleadoDTO({required this.uuid}) : super._();

  factory _$_ActualizarHabilidadesEmpleadoDTO.fromJson(
          Map<String, dynamic> json) =>
      _$_$_ActualizarHabilidadesEmpleadoDTOFromJson(json);

  @override
  final List<String> uuid;

  @override
  String toString() {
    return 'ActualizarHabilidadesEmpleadoDTO(uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActualizarHabilidadesEmpleadoDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuid);

  @JsonKey(ignore: true)
  @override
  _$ActualizarHabilidadesEmpleadoDTOCopyWith<_ActualizarHabilidadesEmpleadoDTO>
      get copyWith => __$ActualizarHabilidadesEmpleadoDTOCopyWithImpl<
          _ActualizarHabilidadesEmpleadoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActualizarHabilidadesEmpleadoDTOToJson(this);
  }
}

abstract class _ActualizarHabilidadesEmpleadoDTO
    extends ActualizarHabilidadesEmpleadoDTO {
  factory _ActualizarHabilidadesEmpleadoDTO({required List<String> uuid}) =
      _$_ActualizarHabilidadesEmpleadoDTO;
  _ActualizarHabilidadesEmpleadoDTO._() : super._();

  factory _ActualizarHabilidadesEmpleadoDTO.fromJson(
      Map<String, dynamic> json) = _$_ActualizarHabilidadesEmpleadoDTO.fromJson;

  @override
  List<String> get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActualizarHabilidadesEmpleadoDTOCopyWith<_ActualizarHabilidadesEmpleadoDTO>
      get copyWith => throw _privateConstructorUsedError;
}
