// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'leccion_lista_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeccionListaDTO _$LeccionListaDTOFromJson(Map<String, dynamic> json) {
  return _LeccionListaDTO.fromJson(json);
}

/// @nodoc
class _$LeccionListaDTOTearOff {
  const _$LeccionListaDTOTearOff();

  _LeccionListaDTO call({required String uuid, required String titulo}) {
    return _LeccionListaDTO(
      uuid: uuid,
      titulo: titulo,
    );
  }

  LeccionListaDTO fromJson(Map<String, Object> json) {
    return LeccionListaDTO.fromJson(json);
  }
}

/// @nodoc
const $LeccionListaDTO = _$LeccionListaDTOTearOff();

/// @nodoc
mixin _$LeccionListaDTO {
  String get uuid => throw _privateConstructorUsedError;
  String get titulo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeccionListaDTOCopyWith<LeccionListaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeccionListaDTOCopyWith<$Res> {
  factory $LeccionListaDTOCopyWith(
          LeccionListaDTO value, $Res Function(LeccionListaDTO) then) =
      _$LeccionListaDTOCopyWithImpl<$Res>;
  $Res call({String uuid, String titulo});
}

/// @nodoc
class _$LeccionListaDTOCopyWithImpl<$Res>
    implements $LeccionListaDTOCopyWith<$Res> {
  _$LeccionListaDTOCopyWithImpl(this._value, this._then);

  final LeccionListaDTO _value;
  // ignore: unused_field
  final $Res Function(LeccionListaDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      titulo: titulo == freezed
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LeccionListaDTOCopyWith<$Res>
    implements $LeccionListaDTOCopyWith<$Res> {
  factory _$LeccionListaDTOCopyWith(
          _LeccionListaDTO value, $Res Function(_LeccionListaDTO) then) =
      __$LeccionListaDTOCopyWithImpl<$Res>;
  @override
  $Res call({String uuid, String titulo});
}

/// @nodoc
class __$LeccionListaDTOCopyWithImpl<$Res>
    extends _$LeccionListaDTOCopyWithImpl<$Res>
    implements _$LeccionListaDTOCopyWith<$Res> {
  __$LeccionListaDTOCopyWithImpl(
      _LeccionListaDTO _value, $Res Function(_LeccionListaDTO) _then)
      : super(_value, (v) => _then(v as _LeccionListaDTO));

  @override
  _LeccionListaDTO get _value => super._value as _LeccionListaDTO;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
  }) {
    return _then(_LeccionListaDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      titulo: titulo == freezed
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeccionListaDTO extends _LeccionListaDTO {
  _$_LeccionListaDTO({required this.uuid, required this.titulo}) : super._();

  factory _$_LeccionListaDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_LeccionListaDTOFromJson(json);

  @override
  final String uuid;
  @override
  final String titulo;

  @override
  String toString() {
    return 'LeccionListaDTO(uuid: $uuid, titulo: $titulo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeccionListaDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.titulo, titulo) ||
                const DeepCollectionEquality().equals(other.titulo, titulo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(titulo);

  @JsonKey(ignore: true)
  @override
  _$LeccionListaDTOCopyWith<_LeccionListaDTO> get copyWith =>
      __$LeccionListaDTOCopyWithImpl<_LeccionListaDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LeccionListaDTOToJson(this);
  }
}

abstract class _LeccionListaDTO extends LeccionListaDTO {
  factory _LeccionListaDTO({required String uuid, required String titulo}) =
      _$_LeccionListaDTO;
  _LeccionListaDTO._() : super._();

  factory _LeccionListaDTO.fromJson(Map<String, dynamic> json) =
      _$_LeccionListaDTO.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get titulo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LeccionListaDTOCopyWith<_LeccionListaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
