// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'respuestas_cuestionario_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RespuestasCuestionarioDTO _$RespuestasCuestionarioDTOFromJson(
    Map<String, dynamic> json) {
  return _RespuestasCuestionarioDTO.fromJson(json);
}

/// @nodoc
class _$RespuestasCuestionarioDTOTearOff {
  const _$RespuestasCuestionarioDTOTearOff();

  _RespuestasCuestionarioDTO call(
      {required String uuidPregunta, required String uuidOpcion}) {
    return _RespuestasCuestionarioDTO(
      uuidPregunta: uuidPregunta,
      uuidOpcion: uuidOpcion,
    );
  }

  RespuestasCuestionarioDTO fromJson(Map<String, Object> json) {
    return RespuestasCuestionarioDTO.fromJson(json);
  }
}

/// @nodoc
const $RespuestasCuestionarioDTO = _$RespuestasCuestionarioDTOTearOff();

/// @nodoc
mixin _$RespuestasCuestionarioDTO {
  String get uuidPregunta => throw _privateConstructorUsedError;
  String get uuidOpcion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RespuestasCuestionarioDTOCopyWith<RespuestasCuestionarioDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespuestasCuestionarioDTOCopyWith<$Res> {
  factory $RespuestasCuestionarioDTOCopyWith(RespuestasCuestionarioDTO value,
          $Res Function(RespuestasCuestionarioDTO) then) =
      _$RespuestasCuestionarioDTOCopyWithImpl<$Res>;
  $Res call({String uuidPregunta, String uuidOpcion});
}

/// @nodoc
class _$RespuestasCuestionarioDTOCopyWithImpl<$Res>
    implements $RespuestasCuestionarioDTOCopyWith<$Res> {
  _$RespuestasCuestionarioDTOCopyWithImpl(this._value, this._then);

  final RespuestasCuestionarioDTO _value;
  // ignore: unused_field
  final $Res Function(RespuestasCuestionarioDTO) _then;

  @override
  $Res call({
    Object? uuidPregunta = freezed,
    Object? uuidOpcion = freezed,
  }) {
    return _then(_value.copyWith(
      uuidPregunta: uuidPregunta == freezed
          ? _value.uuidPregunta
          : uuidPregunta // ignore: cast_nullable_to_non_nullable
              as String,
      uuidOpcion: uuidOpcion == freezed
          ? _value.uuidOpcion
          : uuidOpcion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RespuestasCuestionarioDTOCopyWith<$Res>
    implements $RespuestasCuestionarioDTOCopyWith<$Res> {
  factory _$RespuestasCuestionarioDTOCopyWith(_RespuestasCuestionarioDTO value,
          $Res Function(_RespuestasCuestionarioDTO) then) =
      __$RespuestasCuestionarioDTOCopyWithImpl<$Res>;
  @override
  $Res call({String uuidPregunta, String uuidOpcion});
}

/// @nodoc
class __$RespuestasCuestionarioDTOCopyWithImpl<$Res>
    extends _$RespuestasCuestionarioDTOCopyWithImpl<$Res>
    implements _$RespuestasCuestionarioDTOCopyWith<$Res> {
  __$RespuestasCuestionarioDTOCopyWithImpl(_RespuestasCuestionarioDTO _value,
      $Res Function(_RespuestasCuestionarioDTO) _then)
      : super(_value, (v) => _then(v as _RespuestasCuestionarioDTO));

  @override
  _RespuestasCuestionarioDTO get _value =>
      super._value as _RespuestasCuestionarioDTO;

  @override
  $Res call({
    Object? uuidPregunta = freezed,
    Object? uuidOpcion = freezed,
  }) {
    return _then(_RespuestasCuestionarioDTO(
      uuidPregunta: uuidPregunta == freezed
          ? _value.uuidPregunta
          : uuidPregunta // ignore: cast_nullable_to_non_nullable
              as String,
      uuidOpcion: uuidOpcion == freezed
          ? _value.uuidOpcion
          : uuidOpcion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RespuestasCuestionarioDTO extends _RespuestasCuestionarioDTO {
  _$_RespuestasCuestionarioDTO(
      {required this.uuidPregunta, required this.uuidOpcion})
      : super._();

  factory _$_RespuestasCuestionarioDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_RespuestasCuestionarioDTOFromJson(json);

  @override
  final String uuidPregunta;
  @override
  final String uuidOpcion;

  @override
  String toString() {
    return 'RespuestasCuestionarioDTO(uuidPregunta: $uuidPregunta, uuidOpcion: $uuidOpcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RespuestasCuestionarioDTO &&
            (identical(other.uuidPregunta, uuidPregunta) ||
                const DeepCollectionEquality()
                    .equals(other.uuidPregunta, uuidPregunta)) &&
            (identical(other.uuidOpcion, uuidOpcion) ||
                const DeepCollectionEquality()
                    .equals(other.uuidOpcion, uuidOpcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuidPregunta) ^
      const DeepCollectionEquality().hash(uuidOpcion);

  @JsonKey(ignore: true)
  @override
  _$RespuestasCuestionarioDTOCopyWith<_RespuestasCuestionarioDTO>
      get copyWith =>
          __$RespuestasCuestionarioDTOCopyWithImpl<_RespuestasCuestionarioDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RespuestasCuestionarioDTOToJson(this);
  }
}

abstract class _RespuestasCuestionarioDTO extends RespuestasCuestionarioDTO {
  factory _RespuestasCuestionarioDTO(
      {required String uuidPregunta,
      required String uuidOpcion}) = _$_RespuestasCuestionarioDTO;
  _RespuestasCuestionarioDTO._() : super._();

  factory _RespuestasCuestionarioDTO.fromJson(Map<String, dynamic> json) =
      _$_RespuestasCuestionarioDTO.fromJson;

  @override
  String get uuidPregunta => throw _privateConstructorUsedError;
  @override
  String get uuidOpcion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RespuestasCuestionarioDTOCopyWith<_RespuestasCuestionarioDTO>
      get copyWith => throw _privateConstructorUsedError;
}
