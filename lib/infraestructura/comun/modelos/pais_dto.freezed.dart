// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pais_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaisDTO _$PaisDTOFromJson(Map<String, dynamic> json) {
  return _PaisDTO.fromJson(json);
}

/// @nodoc
class _$PaisDTOTearOff {
  const _$PaisDTOTearOff();

  _PaisDTO call({required String uuidPais, required String nombrePais}) {
    return _PaisDTO(
      uuidPais: uuidPais,
      nombrePais: nombrePais,
    );
  }

  PaisDTO fromJson(Map<String, Object> json) {
    return PaisDTO.fromJson(json);
  }
}

/// @nodoc
const $PaisDTO = _$PaisDTOTearOff();

/// @nodoc
mixin _$PaisDTO {
  String get uuidPais => throw _privateConstructorUsedError;
  String get nombrePais => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaisDTOCopyWith<PaisDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaisDTOCopyWith<$Res> {
  factory $PaisDTOCopyWith(PaisDTO value, $Res Function(PaisDTO) then) =
      _$PaisDTOCopyWithImpl<$Res>;
  $Res call({String uuidPais, String nombrePais});
}

/// @nodoc
class _$PaisDTOCopyWithImpl<$Res> implements $PaisDTOCopyWith<$Res> {
  _$PaisDTOCopyWithImpl(this._value, this._then);

  final PaisDTO _value;
  // ignore: unused_field
  final $Res Function(PaisDTO) _then;

  @override
  $Res call({
    Object? uuidPais = freezed,
    Object? nombrePais = freezed,
  }) {
    return _then(_value.copyWith(
      uuidPais: uuidPais == freezed
          ? _value.uuidPais
          : uuidPais // ignore: cast_nullable_to_non_nullable
              as String,
      nombrePais: nombrePais == freezed
          ? _value.nombrePais
          : nombrePais // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PaisDTOCopyWith<$Res> implements $PaisDTOCopyWith<$Res> {
  factory _$PaisDTOCopyWith(_PaisDTO value, $Res Function(_PaisDTO) then) =
      __$PaisDTOCopyWithImpl<$Res>;
  @override
  $Res call({String uuidPais, String nombrePais});
}

/// @nodoc
class __$PaisDTOCopyWithImpl<$Res> extends _$PaisDTOCopyWithImpl<$Res>
    implements _$PaisDTOCopyWith<$Res> {
  __$PaisDTOCopyWithImpl(_PaisDTO _value, $Res Function(_PaisDTO) _then)
      : super(_value, (v) => _then(v as _PaisDTO));

  @override
  _PaisDTO get _value => super._value as _PaisDTO;

  @override
  $Res call({
    Object? uuidPais = freezed,
    Object? nombrePais = freezed,
  }) {
    return _then(_PaisDTO(
      uuidPais: uuidPais == freezed
          ? _value.uuidPais
          : uuidPais // ignore: cast_nullable_to_non_nullable
              as String,
      nombrePais: nombrePais == freezed
          ? _value.nombrePais
          : nombrePais // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaisDTO extends _PaisDTO {
  _$_PaisDTO({required this.uuidPais, required this.nombrePais}) : super._();

  factory _$_PaisDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PaisDTOFromJson(json);

  @override
  final String uuidPais;
  @override
  final String nombrePais;

  @override
  String toString() {
    return 'PaisDTO(uuidPais: $uuidPais, nombrePais: $nombrePais)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaisDTO &&
            (identical(other.uuidPais, uuidPais) ||
                const DeepCollectionEquality()
                    .equals(other.uuidPais, uuidPais)) &&
            (identical(other.nombrePais, nombrePais) ||
                const DeepCollectionEquality()
                    .equals(other.nombrePais, nombrePais)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuidPais) ^
      const DeepCollectionEquality().hash(nombrePais);

  @JsonKey(ignore: true)
  @override
  _$PaisDTOCopyWith<_PaisDTO> get copyWith =>
      __$PaisDTOCopyWithImpl<_PaisDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaisDTOToJson(this);
  }
}

abstract class _PaisDTO extends PaisDTO {
  factory _PaisDTO({required String uuidPais, required String nombrePais}) =
      _$_PaisDTO;
  _PaisDTO._() : super._();

  factory _PaisDTO.fromJson(Map<String, dynamic> json) = _$_PaisDTO.fromJson;

  @override
  String get uuidPais => throw _privateConstructorUsedError;
  @override
  String get nombrePais => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaisDTOCopyWith<_PaisDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
