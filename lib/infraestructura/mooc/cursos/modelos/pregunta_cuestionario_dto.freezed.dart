// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pregunta_cuestionario_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreguntaCuestionarioDTO _$PreguntaCuestionarioDTOFromJson(
    Map<String, dynamic> json) {
  return _PreguntaCuestionarioDTO.fromJson(json);
}

/// @nodoc
class _$PreguntaCuestionarioDTOTearOff {
  const _$PreguntaCuestionarioDTOTearOff();

  _PreguntaCuestionarioDTO call(
      {required String uuid, List<OpcionPreguntaDTO>? opciones}) {
    return _PreguntaCuestionarioDTO(
      uuid: uuid,
      opciones: opciones,
    );
  }

  PreguntaCuestionarioDTO fromJson(Map<String, Object> json) {
    return PreguntaCuestionarioDTO.fromJson(json);
  }
}

/// @nodoc
const $PreguntaCuestionarioDTO = _$PreguntaCuestionarioDTOTearOff();

/// @nodoc
mixin _$PreguntaCuestionarioDTO {
  String get uuid => throw _privateConstructorUsedError;
  List<OpcionPreguntaDTO>? get opciones => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreguntaCuestionarioDTOCopyWith<PreguntaCuestionarioDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreguntaCuestionarioDTOCopyWith<$Res> {
  factory $PreguntaCuestionarioDTOCopyWith(PreguntaCuestionarioDTO value,
          $Res Function(PreguntaCuestionarioDTO) then) =
      _$PreguntaCuestionarioDTOCopyWithImpl<$Res>;
  $Res call({String uuid, List<OpcionPreguntaDTO>? opciones});
}

/// @nodoc
class _$PreguntaCuestionarioDTOCopyWithImpl<$Res>
    implements $PreguntaCuestionarioDTOCopyWith<$Res> {
  _$PreguntaCuestionarioDTOCopyWithImpl(this._value, this._then);

  final PreguntaCuestionarioDTO _value;
  // ignore: unused_field
  final $Res Function(PreguntaCuestionarioDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? opciones = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      opciones: opciones == freezed
          ? _value.opciones
          : opciones // ignore: cast_nullable_to_non_nullable
              as List<OpcionPreguntaDTO>?,
    ));
  }
}

/// @nodoc
abstract class _$PreguntaCuestionarioDTOCopyWith<$Res>
    implements $PreguntaCuestionarioDTOCopyWith<$Res> {
  factory _$PreguntaCuestionarioDTOCopyWith(_PreguntaCuestionarioDTO value,
          $Res Function(_PreguntaCuestionarioDTO) then) =
      __$PreguntaCuestionarioDTOCopyWithImpl<$Res>;
  @override
  $Res call({String uuid, List<OpcionPreguntaDTO>? opciones});
}

/// @nodoc
class __$PreguntaCuestionarioDTOCopyWithImpl<$Res>
    extends _$PreguntaCuestionarioDTOCopyWithImpl<$Res>
    implements _$PreguntaCuestionarioDTOCopyWith<$Res> {
  __$PreguntaCuestionarioDTOCopyWithImpl(_PreguntaCuestionarioDTO _value,
      $Res Function(_PreguntaCuestionarioDTO) _then)
      : super(_value, (v) => _then(v as _PreguntaCuestionarioDTO));

  @override
  _PreguntaCuestionarioDTO get _value =>
      super._value as _PreguntaCuestionarioDTO;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? opciones = freezed,
  }) {
    return _then(_PreguntaCuestionarioDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      opciones: opciones == freezed
          ? _value.opciones
          : opciones // ignore: cast_nullable_to_non_nullable
              as List<OpcionPreguntaDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreguntaCuestionarioDTO extends _PreguntaCuestionarioDTO {
  _$_PreguntaCuestionarioDTO({required this.uuid, this.opciones}) : super._();

  factory _$_PreguntaCuestionarioDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PreguntaCuestionarioDTOFromJson(json);

  @override
  final String uuid;
  @override
  final List<OpcionPreguntaDTO>? opciones;

  @override
  String toString() {
    return 'PreguntaCuestionarioDTO(uuid: $uuid, opciones: $opciones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreguntaCuestionarioDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.opciones, opciones) ||
                const DeepCollectionEquality()
                    .equals(other.opciones, opciones)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(opciones);

  @JsonKey(ignore: true)
  @override
  _$PreguntaCuestionarioDTOCopyWith<_PreguntaCuestionarioDTO> get copyWith =>
      __$PreguntaCuestionarioDTOCopyWithImpl<_PreguntaCuestionarioDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PreguntaCuestionarioDTOToJson(this);
  }
}

abstract class _PreguntaCuestionarioDTO extends PreguntaCuestionarioDTO {
  factory _PreguntaCuestionarioDTO(
      {required String uuid,
      List<OpcionPreguntaDTO>? opciones}) = _$_PreguntaCuestionarioDTO;
  _PreguntaCuestionarioDTO._() : super._();

  factory _PreguntaCuestionarioDTO.fromJson(Map<String, dynamic> json) =
      _$_PreguntaCuestionarioDTO.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  List<OpcionPreguntaDTO>? get opciones => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PreguntaCuestionarioDTOCopyWith<_PreguntaCuestionarioDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
