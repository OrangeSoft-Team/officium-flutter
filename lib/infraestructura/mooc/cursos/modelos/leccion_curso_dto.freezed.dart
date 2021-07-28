// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'leccion_curso_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeccionCursoDTO _$LeccionCursoDTOFromJson(Map<String, dynamic> json) {
  return _LeccionCursoDTO.fromJson(json);
}

/// @nodoc
class _$LeccionCursoDTOTearOff {
  const _$LeccionCursoDTOTearOff();

  _LeccionCursoDTO call(
      {required String uuid,
      required String titulo,
      required String descripcion,
      required String contenido}) {
    return _LeccionCursoDTO(
      uuid: uuid,
      titulo: titulo,
      descripcion: descripcion,
      contenido: contenido,
    );
  }

  LeccionCursoDTO fromJson(Map<String, Object> json) {
    return LeccionCursoDTO.fromJson(json);
  }
}

/// @nodoc
const $LeccionCursoDTO = _$LeccionCursoDTOTearOff();

/// @nodoc
mixin _$LeccionCursoDTO {
  String get uuid => throw _privateConstructorUsedError;
  String get titulo => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  String get contenido => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeccionCursoDTOCopyWith<LeccionCursoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeccionCursoDTOCopyWith<$Res> {
  factory $LeccionCursoDTOCopyWith(
          LeccionCursoDTO value, $Res Function(LeccionCursoDTO) then) =
      _$LeccionCursoDTOCopyWithImpl<$Res>;
  $Res call({String uuid, String titulo, String descripcion, String contenido});
}

/// @nodoc
class _$LeccionCursoDTOCopyWithImpl<$Res>
    implements $LeccionCursoDTOCopyWith<$Res> {
  _$LeccionCursoDTOCopyWithImpl(this._value, this._then);

  final LeccionCursoDTO _value;
  // ignore: unused_field
  final $Res Function(LeccionCursoDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
    Object? descripcion = freezed,
    Object? contenido = freezed,
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
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      contenido: contenido == freezed
          ? _value.contenido
          : contenido // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LeccionCursoDTOCopyWith<$Res>
    implements $LeccionCursoDTOCopyWith<$Res> {
  factory _$LeccionCursoDTOCopyWith(
          _LeccionCursoDTO value, $Res Function(_LeccionCursoDTO) then) =
      __$LeccionCursoDTOCopyWithImpl<$Res>;
  @override
  $Res call({String uuid, String titulo, String descripcion, String contenido});
}

/// @nodoc
class __$LeccionCursoDTOCopyWithImpl<$Res>
    extends _$LeccionCursoDTOCopyWithImpl<$Res>
    implements _$LeccionCursoDTOCopyWith<$Res> {
  __$LeccionCursoDTOCopyWithImpl(
      _LeccionCursoDTO _value, $Res Function(_LeccionCursoDTO) _then)
      : super(_value, (v) => _then(v as _LeccionCursoDTO));

  @override
  _LeccionCursoDTO get _value => super._value as _LeccionCursoDTO;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
    Object? descripcion = freezed,
    Object? contenido = freezed,
  }) {
    return _then(_LeccionCursoDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      titulo: titulo == freezed
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      contenido: contenido == freezed
          ? _value.contenido
          : contenido // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeccionCursoDTO extends _LeccionCursoDTO {
  _$_LeccionCursoDTO(
      {required this.uuid,
      required this.titulo,
      required this.descripcion,
      required this.contenido})
      : super._();

  factory _$_LeccionCursoDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_LeccionCursoDTOFromJson(json);

  @override
  final String uuid;
  @override
  final String titulo;
  @override
  final String descripcion;
  @override
  final String contenido;

  @override
  String toString() {
    return 'LeccionCursoDTO(uuid: $uuid, titulo: $titulo, descripcion: $descripcion, contenido: $contenido)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeccionCursoDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.titulo, titulo) ||
                const DeepCollectionEquality().equals(other.titulo, titulo)) &&
            (identical(other.descripcion, descripcion) ||
                const DeepCollectionEquality()
                    .equals(other.descripcion, descripcion)) &&
            (identical(other.contenido, contenido) ||
                const DeepCollectionEquality()
                    .equals(other.contenido, contenido)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(titulo) ^
      const DeepCollectionEquality().hash(descripcion) ^
      const DeepCollectionEquality().hash(contenido);

  @JsonKey(ignore: true)
  @override
  _$LeccionCursoDTOCopyWith<_LeccionCursoDTO> get copyWith =>
      __$LeccionCursoDTOCopyWithImpl<_LeccionCursoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LeccionCursoDTOToJson(this);
  }
}

abstract class _LeccionCursoDTO extends LeccionCursoDTO {
  factory _LeccionCursoDTO(
      {required String uuid,
      required String titulo,
      required String descripcion,
      required String contenido}) = _$_LeccionCursoDTO;
  _LeccionCursoDTO._() : super._();

  factory _LeccionCursoDTO.fromJson(Map<String, dynamic> json) =
      _$_LeccionCursoDTO.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get titulo => throw _privateConstructorUsedError;
  @override
  String get descripcion => throw _privateConstructorUsedError;
  @override
  String get contenido => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LeccionCursoDTOCopyWith<_LeccionCursoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
