// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'respuesta_inicio_sesion_empelado_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RespuestaInicioSesionEmpleadoDTO _$RespuestaInicioSesionEmpleadoDTOFromJson(
    Map<String, dynamic> json) {
  return _RespuestaInicioSesionEmpleadoDTO.fromJson(json);
}

/// @nodoc
class _$RespuestaInicioSesionEmpleadoDTOTearOff {
  const _$RespuestaInicioSesionEmpleadoDTOTearOff();

  _RespuestaInicioSesionEmpleadoDTO call(
      {required String tokenSesion, required String uuidEmpleado}) {
    return _RespuestaInicioSesionEmpleadoDTO(
      tokenSesion: tokenSesion,
      uuidEmpleado: uuidEmpleado,
    );
  }

  RespuestaInicioSesionEmpleadoDTO fromJson(Map<String, Object> json) {
    return RespuestaInicioSesionEmpleadoDTO.fromJson(json);
  }
}

/// @nodoc
const $RespuestaInicioSesionEmpleadoDTO =
    _$RespuestaInicioSesionEmpleadoDTOTearOff();

/// @nodoc
mixin _$RespuestaInicioSesionEmpleadoDTO {
  String get tokenSesion => throw _privateConstructorUsedError;
  String get uuidEmpleado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RespuestaInicioSesionEmpleadoDTOCopyWith<RespuestaInicioSesionEmpleadoDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespuestaInicioSesionEmpleadoDTOCopyWith<$Res> {
  factory $RespuestaInicioSesionEmpleadoDTOCopyWith(
          RespuestaInicioSesionEmpleadoDTO value,
          $Res Function(RespuestaInicioSesionEmpleadoDTO) then) =
      _$RespuestaInicioSesionEmpleadoDTOCopyWithImpl<$Res>;
  $Res call({String tokenSesion, String uuidEmpleado});
}

/// @nodoc
class _$RespuestaInicioSesionEmpleadoDTOCopyWithImpl<$Res>
    implements $RespuestaInicioSesionEmpleadoDTOCopyWith<$Res> {
  _$RespuestaInicioSesionEmpleadoDTOCopyWithImpl(this._value, this._then);

  final RespuestaInicioSesionEmpleadoDTO _value;
  // ignore: unused_field
  final $Res Function(RespuestaInicioSesionEmpleadoDTO) _then;

  @override
  $Res call({
    Object? tokenSesion = freezed,
    Object? uuidEmpleado = freezed,
  }) {
    return _then(_value.copyWith(
      tokenSesion: tokenSesion == freezed
          ? _value.tokenSesion
          : tokenSesion // ignore: cast_nullable_to_non_nullable
              as String,
      uuidEmpleado: uuidEmpleado == freezed
          ? _value.uuidEmpleado
          : uuidEmpleado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RespuestaInicioSesionEmpleadoDTOCopyWith<$Res>
    implements $RespuestaInicioSesionEmpleadoDTOCopyWith<$Res> {
  factory _$RespuestaInicioSesionEmpleadoDTOCopyWith(
          _RespuestaInicioSesionEmpleadoDTO value,
          $Res Function(_RespuestaInicioSesionEmpleadoDTO) then) =
      __$RespuestaInicioSesionEmpleadoDTOCopyWithImpl<$Res>;
  @override
  $Res call({String tokenSesion, String uuidEmpleado});
}

/// @nodoc
class __$RespuestaInicioSesionEmpleadoDTOCopyWithImpl<$Res>
    extends _$RespuestaInicioSesionEmpleadoDTOCopyWithImpl<$Res>
    implements _$RespuestaInicioSesionEmpleadoDTOCopyWith<$Res> {
  __$RespuestaInicioSesionEmpleadoDTOCopyWithImpl(
      _RespuestaInicioSesionEmpleadoDTO _value,
      $Res Function(_RespuestaInicioSesionEmpleadoDTO) _then)
      : super(_value, (v) => _then(v as _RespuestaInicioSesionEmpleadoDTO));

  @override
  _RespuestaInicioSesionEmpleadoDTO get _value =>
      super._value as _RespuestaInicioSesionEmpleadoDTO;

  @override
  $Res call({
    Object? tokenSesion = freezed,
    Object? uuidEmpleado = freezed,
  }) {
    return _then(_RespuestaInicioSesionEmpleadoDTO(
      tokenSesion: tokenSesion == freezed
          ? _value.tokenSesion
          : tokenSesion // ignore: cast_nullable_to_non_nullable
              as String,
      uuidEmpleado: uuidEmpleado == freezed
          ? _value.uuidEmpleado
          : uuidEmpleado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RespuestaInicioSesionEmpleadoDTO
    extends _RespuestaInicioSesionEmpleadoDTO {
  _$_RespuestaInicioSesionEmpleadoDTO(
      {required this.tokenSesion, required this.uuidEmpleado})
      : super._();

  factory _$_RespuestaInicioSesionEmpleadoDTO.fromJson(
          Map<String, dynamic> json) =>
      _$_$_RespuestaInicioSesionEmpleadoDTOFromJson(json);

  @override
  final String tokenSesion;
  @override
  final String uuidEmpleado;

  @override
  String toString() {
    return 'RespuestaInicioSesionEmpleadoDTO(tokenSesion: $tokenSesion, uuidEmpleado: $uuidEmpleado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RespuestaInicioSesionEmpleadoDTO &&
            (identical(other.tokenSesion, tokenSesion) ||
                const DeepCollectionEquality()
                    .equals(other.tokenSesion, tokenSesion)) &&
            (identical(other.uuidEmpleado, uuidEmpleado) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEmpleado, uuidEmpleado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tokenSesion) ^
      const DeepCollectionEquality().hash(uuidEmpleado);

  @JsonKey(ignore: true)
  @override
  _$RespuestaInicioSesionEmpleadoDTOCopyWith<_RespuestaInicioSesionEmpleadoDTO>
      get copyWith => __$RespuestaInicioSesionEmpleadoDTOCopyWithImpl<
          _RespuestaInicioSesionEmpleadoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RespuestaInicioSesionEmpleadoDTOToJson(this);
  }
}

abstract class _RespuestaInicioSesionEmpleadoDTO
    extends RespuestaInicioSesionEmpleadoDTO {
  factory _RespuestaInicioSesionEmpleadoDTO(
      {required String tokenSesion,
      required String uuidEmpleado}) = _$_RespuestaInicioSesionEmpleadoDTO;
  _RespuestaInicioSesionEmpleadoDTO._() : super._();

  factory _RespuestaInicioSesionEmpleadoDTO.fromJson(
      Map<String, dynamic> json) = _$_RespuestaInicioSesionEmpleadoDTO.fromJson;

  @override
  String get tokenSesion => throw _privateConstructorUsedError;
  @override
  String get uuidEmpleado => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RespuestaInicioSesionEmpleadoDTOCopyWith<_RespuestaInicioSesionEmpleadoDTO>
      get copyWith => throw _privateConstructorUsedError;
}
