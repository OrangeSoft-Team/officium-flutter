// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'habilidad_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HabilidadDTO _$HabilidadDTOFromJson(Map<String, dynamic> json) {
  return _HabilidadDTO.fromJson(json);
}

/// @nodoc
class _$HabilidadDTOTearOff {
  const _$HabilidadDTOTearOff();

  _HabilidadDTO call(
      {required String uuid,
      required String nombre,
      required String categoria}) {
    return _HabilidadDTO(
      uuid: uuid,
      nombre: nombre,
      categoria: categoria,
    );
  }

  HabilidadDTO fromJson(Map<String, Object> json) {
    return HabilidadDTO.fromJson(json);
  }
}

/// @nodoc
const $HabilidadDTO = _$HabilidadDTOTearOff();

/// @nodoc
mixin _$HabilidadDTO {
  String get uuid => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get categoria => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabilidadDTOCopyWith<HabilidadDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabilidadDTOCopyWith<$Res> {
  factory $HabilidadDTOCopyWith(
          HabilidadDTO value, $Res Function(HabilidadDTO) then) =
      _$HabilidadDTOCopyWithImpl<$Res>;
  $Res call({String uuid, String nombre, String categoria});
}

/// @nodoc
class _$HabilidadDTOCopyWithImpl<$Res> implements $HabilidadDTOCopyWith<$Res> {
  _$HabilidadDTOCopyWithImpl(this._value, this._then);

  final HabilidadDTO _value;
  // ignore: unused_field
  final $Res Function(HabilidadDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? nombre = freezed,
    Object? categoria = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      categoria: categoria == freezed
          ? _value.categoria
          : categoria // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HabilidadDTOCopyWith<$Res>
    implements $HabilidadDTOCopyWith<$Res> {
  factory _$HabilidadDTOCopyWith(
          _HabilidadDTO value, $Res Function(_HabilidadDTO) then) =
      __$HabilidadDTOCopyWithImpl<$Res>;
  @override
  $Res call({String uuid, String nombre, String categoria});
}

/// @nodoc
class __$HabilidadDTOCopyWithImpl<$Res> extends _$HabilidadDTOCopyWithImpl<$Res>
    implements _$HabilidadDTOCopyWith<$Res> {
  __$HabilidadDTOCopyWithImpl(
      _HabilidadDTO _value, $Res Function(_HabilidadDTO) _then)
      : super(_value, (v) => _then(v as _HabilidadDTO));

  @override
  _HabilidadDTO get _value => super._value as _HabilidadDTO;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? nombre = freezed,
    Object? categoria = freezed,
  }) {
    return _then(_HabilidadDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      categoria: categoria == freezed
          ? _value.categoria
          : categoria // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HabilidadDTO extends _HabilidadDTO {
  _$_HabilidadDTO(
      {required this.uuid, required this.nombre, required this.categoria})
      : super._();

  factory _$_HabilidadDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_HabilidadDTOFromJson(json);

  @override
  final String uuid;
  @override
  final String nombre;
  @override
  final String categoria;

  @override
  String toString() {
    return 'HabilidadDTO(uuid: $uuid, nombre: $nombre, categoria: $categoria)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HabilidadDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.nombre, nombre) ||
                const DeepCollectionEquality().equals(other.nombre, nombre)) &&
            (identical(other.categoria, categoria) ||
                const DeepCollectionEquality()
                    .equals(other.categoria, categoria)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(nombre) ^
      const DeepCollectionEquality().hash(categoria);

  @JsonKey(ignore: true)
  @override
  _$HabilidadDTOCopyWith<_HabilidadDTO> get copyWith =>
      __$HabilidadDTOCopyWithImpl<_HabilidadDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HabilidadDTOToJson(this);
  }
}

abstract class _HabilidadDTO extends HabilidadDTO {
  factory _HabilidadDTO(
      {required String uuid,
      required String nombre,
      required String categoria}) = _$_HabilidadDTO;
  _HabilidadDTO._() : super._();

  factory _HabilidadDTO.fromJson(Map<String, dynamic> json) =
      _$_HabilidadDTO.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get nombre => throw _privateConstructorUsedError;
  @override
  String get categoria => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HabilidadDTOCopyWith<_HabilidadDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
