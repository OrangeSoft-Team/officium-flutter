// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'datos_inicio_sesion_empleado_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DatosInicioSesionEmpleadoDTO _$DatosInicioSesionEmpleadoDTOFromJson(
    Map<String, dynamic> json) {
  return _DatosInicioSesionEmpleadoDTO.fromJson(json);
}

/// @nodoc
class _$DatosInicioSesionEmpleadoDTOTearOff {
  const _$DatosInicioSesionEmpleadoDTOTearOff();

  _DatosInicioSesionEmpleadoDTO call(
      {required String correoElectronico, required String token}) {
    return _DatosInicioSesionEmpleadoDTO(
      correoElectronico: correoElectronico,
      token: token,
    );
  }

  DatosInicioSesionEmpleadoDTO fromJson(Map<String, Object> json) {
    return DatosInicioSesionEmpleadoDTO.fromJson(json);
  }
}

/// @nodoc
const $DatosInicioSesionEmpleadoDTO = _$DatosInicioSesionEmpleadoDTOTearOff();

/// @nodoc
mixin _$DatosInicioSesionEmpleadoDTO {
  String get correoElectronico => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatosInicioSesionEmpleadoDTOCopyWith<DatosInicioSesionEmpleadoDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatosInicioSesionEmpleadoDTOCopyWith<$Res> {
  factory $DatosInicioSesionEmpleadoDTOCopyWith(
          DatosInicioSesionEmpleadoDTO value,
          $Res Function(DatosInicioSesionEmpleadoDTO) then) =
      _$DatosInicioSesionEmpleadoDTOCopyWithImpl<$Res>;
  $Res call({String correoElectronico, String token});
}

/// @nodoc
class _$DatosInicioSesionEmpleadoDTOCopyWithImpl<$Res>
    implements $DatosInicioSesionEmpleadoDTOCopyWith<$Res> {
  _$DatosInicioSesionEmpleadoDTOCopyWithImpl(this._value, this._then);

  final DatosInicioSesionEmpleadoDTO _value;
  // ignore: unused_field
  final $Res Function(DatosInicioSesionEmpleadoDTO) _then;

  @override
  $Res call({
    Object? correoElectronico = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      correoElectronico: correoElectronico == freezed
          ? _value.correoElectronico
          : correoElectronico // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DatosInicioSesionEmpleadoDTOCopyWith<$Res>
    implements $DatosInicioSesionEmpleadoDTOCopyWith<$Res> {
  factory _$DatosInicioSesionEmpleadoDTOCopyWith(
          _DatosInicioSesionEmpleadoDTO value,
          $Res Function(_DatosInicioSesionEmpleadoDTO) then) =
      __$DatosInicioSesionEmpleadoDTOCopyWithImpl<$Res>;
  @override
  $Res call({String correoElectronico, String token});
}

/// @nodoc
class __$DatosInicioSesionEmpleadoDTOCopyWithImpl<$Res>
    extends _$DatosInicioSesionEmpleadoDTOCopyWithImpl<$Res>
    implements _$DatosInicioSesionEmpleadoDTOCopyWith<$Res> {
  __$DatosInicioSesionEmpleadoDTOCopyWithImpl(
      _DatosInicioSesionEmpleadoDTO _value,
      $Res Function(_DatosInicioSesionEmpleadoDTO) _then)
      : super(_value, (v) => _then(v as _DatosInicioSesionEmpleadoDTO));

  @override
  _DatosInicioSesionEmpleadoDTO get _value =>
      super._value as _DatosInicioSesionEmpleadoDTO;

  @override
  $Res call({
    Object? correoElectronico = freezed,
    Object? token = freezed,
  }) {
    return _then(_DatosInicioSesionEmpleadoDTO(
      correoElectronico: correoElectronico == freezed
          ? _value.correoElectronico
          : correoElectronico // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DatosInicioSesionEmpleadoDTO extends _DatosInicioSesionEmpleadoDTO {
  _$_DatosInicioSesionEmpleadoDTO(
      {required this.correoElectronico, required this.token})
      : super._();

  factory _$_DatosInicioSesionEmpleadoDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_DatosInicioSesionEmpleadoDTOFromJson(json);

  @override
  final String correoElectronico;
  @override
  final String token;

  @override
  String toString() {
    return 'DatosInicioSesionEmpleadoDTO(correoElectronico: $correoElectronico, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DatosInicioSesionEmpleadoDTO &&
            (identical(other.correoElectronico, correoElectronico) ||
                const DeepCollectionEquality()
                    .equals(other.correoElectronico, correoElectronico)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(correoElectronico) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$DatosInicioSesionEmpleadoDTOCopyWith<_DatosInicioSesionEmpleadoDTO>
      get copyWith => __$DatosInicioSesionEmpleadoDTOCopyWithImpl<
          _DatosInicioSesionEmpleadoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DatosInicioSesionEmpleadoDTOToJson(this);
  }
}

abstract class _DatosInicioSesionEmpleadoDTO
    extends DatosInicioSesionEmpleadoDTO {
  factory _DatosInicioSesionEmpleadoDTO(
      {required String correoElectronico,
      required String token}) = _$_DatosInicioSesionEmpleadoDTO;
  _DatosInicioSesionEmpleadoDTO._() : super._();

  factory _DatosInicioSesionEmpleadoDTO.fromJson(Map<String, dynamic> json) =
      _$_DatosInicioSesionEmpleadoDTO.fromJson;

  @override
  String get correoElectronico => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatosInicioSesionEmpleadoDTOCopyWith<_DatosInicioSesionEmpleadoDTO>
      get copyWith => throw _privateConstructorUsedError;
}
