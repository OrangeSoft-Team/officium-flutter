// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ciudad_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CiudadDTO _$CiudadDTOFromJson(Map<String, dynamic> json) {
  return _CiudadDTO.fromJson(json);
}

/// @nodoc
class _$CiudadDTOTearOff {
  const _$CiudadDTOTearOff();

  _CiudadDTO call(
      {required String uuidPais,
      required String uuidEstado,
      required String uuidCiudad,
      required String nombreCiudad}) {
    return _CiudadDTO(
      uuidPais: uuidPais,
      uuidEstado: uuidEstado,
      uuidCiudad: uuidCiudad,
      nombreCiudad: nombreCiudad,
    );
  }

  CiudadDTO fromJson(Map<String, Object> json) {
    return CiudadDTO.fromJson(json);
  }
}

/// @nodoc
const $CiudadDTO = _$CiudadDTOTearOff();

/// @nodoc
mixin _$CiudadDTO {
  String get uuidPais => throw _privateConstructorUsedError;
  String get uuidEstado => throw _privateConstructorUsedError;
  String get uuidCiudad => throw _privateConstructorUsedError;
  String get nombreCiudad => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CiudadDTOCopyWith<CiudadDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CiudadDTOCopyWith<$Res> {
  factory $CiudadDTOCopyWith(CiudadDTO value, $Res Function(CiudadDTO) then) =
      _$CiudadDTOCopyWithImpl<$Res>;
  $Res call(
      {String uuidPais,
      String uuidEstado,
      String uuidCiudad,
      String nombreCiudad});
}

/// @nodoc
class _$CiudadDTOCopyWithImpl<$Res> implements $CiudadDTOCopyWith<$Res> {
  _$CiudadDTOCopyWithImpl(this._value, this._then);

  final CiudadDTO _value;
  // ignore: unused_field
  final $Res Function(CiudadDTO) _then;

  @override
  $Res call({
    Object? uuidPais = freezed,
    Object? uuidEstado = freezed,
    Object? uuidCiudad = freezed,
    Object? nombreCiudad = freezed,
  }) {
    return _then(_value.copyWith(
      uuidPais: uuidPais == freezed
          ? _value.uuidPais
          : uuidPais // ignore: cast_nullable_to_non_nullable
              as String,
      uuidEstado: uuidEstado == freezed
          ? _value.uuidEstado
          : uuidEstado // ignore: cast_nullable_to_non_nullable
              as String,
      uuidCiudad: uuidCiudad == freezed
          ? _value.uuidCiudad
          : uuidCiudad // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCiudad: nombreCiudad == freezed
          ? _value.nombreCiudad
          : nombreCiudad // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CiudadDTOCopyWith<$Res> implements $CiudadDTOCopyWith<$Res> {
  factory _$CiudadDTOCopyWith(
          _CiudadDTO value, $Res Function(_CiudadDTO) then) =
      __$CiudadDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuidPais,
      String uuidEstado,
      String uuidCiudad,
      String nombreCiudad});
}

/// @nodoc
class __$CiudadDTOCopyWithImpl<$Res> extends _$CiudadDTOCopyWithImpl<$Res>
    implements _$CiudadDTOCopyWith<$Res> {
  __$CiudadDTOCopyWithImpl(_CiudadDTO _value, $Res Function(_CiudadDTO) _then)
      : super(_value, (v) => _then(v as _CiudadDTO));

  @override
  _CiudadDTO get _value => super._value as _CiudadDTO;

  @override
  $Res call({
    Object? uuidPais = freezed,
    Object? uuidEstado = freezed,
    Object? uuidCiudad = freezed,
    Object? nombreCiudad = freezed,
  }) {
    return _then(_CiudadDTO(
      uuidPais: uuidPais == freezed
          ? _value.uuidPais
          : uuidPais // ignore: cast_nullable_to_non_nullable
              as String,
      uuidEstado: uuidEstado == freezed
          ? _value.uuidEstado
          : uuidEstado // ignore: cast_nullable_to_non_nullable
              as String,
      uuidCiudad: uuidCiudad == freezed
          ? _value.uuidCiudad
          : uuidCiudad // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCiudad: nombreCiudad == freezed
          ? _value.nombreCiudad
          : nombreCiudad // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CiudadDTO extends _CiudadDTO {
  _$_CiudadDTO(
      {required this.uuidPais,
      required this.uuidEstado,
      required this.uuidCiudad,
      required this.nombreCiudad})
      : super._();

  factory _$_CiudadDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CiudadDTOFromJson(json);

  @override
  final String uuidPais;
  @override
  final String uuidEstado;
  @override
  final String uuidCiudad;
  @override
  final String nombreCiudad;

  @override
  String toString() {
    return 'CiudadDTO(uuidPais: $uuidPais, uuidEstado: $uuidEstado, uuidCiudad: $uuidCiudad, nombreCiudad: $nombreCiudad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CiudadDTO &&
            (identical(other.uuidPais, uuidPais) ||
                const DeepCollectionEquality()
                    .equals(other.uuidPais, uuidPais)) &&
            (identical(other.uuidEstado, uuidEstado) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEstado, uuidEstado)) &&
            (identical(other.uuidCiudad, uuidCiudad) ||
                const DeepCollectionEquality()
                    .equals(other.uuidCiudad, uuidCiudad)) &&
            (identical(other.nombreCiudad, nombreCiudad) ||
                const DeepCollectionEquality()
                    .equals(other.nombreCiudad, nombreCiudad)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuidPais) ^
      const DeepCollectionEquality().hash(uuidEstado) ^
      const DeepCollectionEquality().hash(uuidCiudad) ^
      const DeepCollectionEquality().hash(nombreCiudad);

  @JsonKey(ignore: true)
  @override
  _$CiudadDTOCopyWith<_CiudadDTO> get copyWith =>
      __$CiudadDTOCopyWithImpl<_CiudadDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CiudadDTOToJson(this);
  }
}

abstract class _CiudadDTO extends CiudadDTO {
  factory _CiudadDTO(
      {required String uuidPais,
      required String uuidEstado,
      required String uuidCiudad,
      required String nombreCiudad}) = _$_CiudadDTO;
  _CiudadDTO._() : super._();

  factory _CiudadDTO.fromJson(Map<String, dynamic> json) =
      _$_CiudadDTO.fromJson;

  @override
  String get uuidPais => throw _privateConstructorUsedError;
  @override
  String get uuidEstado => throw _privateConstructorUsedError;
  @override
  String get uuidCiudad => throw _privateConstructorUsedError;
  @override
  String get nombreCiudad => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CiudadDTOCopyWith<_CiudadDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
