// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'certificado_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CertificadoDTO _$CertificadoDTOFromJson(Map<String, dynamic> json) {
  return _CertificadoDTO.fromJson(json);
}

/// @nodoc
class _$CertificadoDTOTearOff {
  const _$CertificadoDTOTearOff();

  _CertificadoDTO call(
      {required String uuid,
      required String titulo,
      required String fechaExpedicion,
      required String descripcion}) {
    return _CertificadoDTO(
      uuid: uuid,
      titulo: titulo,
      fechaExpedicion: fechaExpedicion,
      descripcion: descripcion,
    );
  }

  CertificadoDTO fromJson(Map<String, Object> json) {
    return CertificadoDTO.fromJson(json);
  }
}

/// @nodoc
const $CertificadoDTO = _$CertificadoDTOTearOff();

/// @nodoc
mixin _$CertificadoDTO {
  String get uuid => throw _privateConstructorUsedError;
  String get titulo => throw _privateConstructorUsedError;
  String get fechaExpedicion => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificadoDTOCopyWith<CertificadoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificadoDTOCopyWith<$Res> {
  factory $CertificadoDTOCopyWith(
          CertificadoDTO value, $Res Function(CertificadoDTO) then) =
      _$CertificadoDTOCopyWithImpl<$Res>;
  $Res call(
      {String uuid, String titulo, String fechaExpedicion, String descripcion});
}

/// @nodoc
class _$CertificadoDTOCopyWithImpl<$Res>
    implements $CertificadoDTOCopyWith<$Res> {
  _$CertificadoDTOCopyWithImpl(this._value, this._then);

  final CertificadoDTO _value;
  // ignore: unused_field
  final $Res Function(CertificadoDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
    Object? fechaExpedicion = freezed,
    Object? descripcion = freezed,
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
      fechaExpedicion: fechaExpedicion == freezed
          ? _value.fechaExpedicion
          : fechaExpedicion // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CertificadoDTOCopyWith<$Res>
    implements $CertificadoDTOCopyWith<$Res> {
  factory _$CertificadoDTOCopyWith(
          _CertificadoDTO value, $Res Function(_CertificadoDTO) then) =
      __$CertificadoDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid, String titulo, String fechaExpedicion, String descripcion});
}

/// @nodoc
class __$CertificadoDTOCopyWithImpl<$Res>
    extends _$CertificadoDTOCopyWithImpl<$Res>
    implements _$CertificadoDTOCopyWith<$Res> {
  __$CertificadoDTOCopyWithImpl(
      _CertificadoDTO _value, $Res Function(_CertificadoDTO) _then)
      : super(_value, (v) => _then(v as _CertificadoDTO));

  @override
  _CertificadoDTO get _value => super._value as _CertificadoDTO;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
    Object? fechaExpedicion = freezed,
    Object? descripcion = freezed,
  }) {
    return _then(_CertificadoDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      titulo: titulo == freezed
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
      fechaExpedicion: fechaExpedicion == freezed
          ? _value.fechaExpedicion
          : fechaExpedicion // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CertificadoDTO extends _CertificadoDTO {
  _$_CertificadoDTO(
      {required this.uuid,
      required this.titulo,
      required this.fechaExpedicion,
      required this.descripcion})
      : super._();

  factory _$_CertificadoDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CertificadoDTOFromJson(json);

  @override
  final String uuid;
  @override
  final String titulo;
  @override
  final String fechaExpedicion;
  @override
  final String descripcion;

  @override
  String toString() {
    return 'CertificadoDTO(uuid: $uuid, titulo: $titulo, fechaExpedicion: $fechaExpedicion, descripcion: $descripcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CertificadoDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.titulo, titulo) ||
                const DeepCollectionEquality().equals(other.titulo, titulo)) &&
            (identical(other.fechaExpedicion, fechaExpedicion) ||
                const DeepCollectionEquality()
                    .equals(other.fechaExpedicion, fechaExpedicion)) &&
            (identical(other.descripcion, descripcion) ||
                const DeepCollectionEquality()
                    .equals(other.descripcion, descripcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(titulo) ^
      const DeepCollectionEquality().hash(fechaExpedicion) ^
      const DeepCollectionEquality().hash(descripcion);

  @JsonKey(ignore: true)
  @override
  _$CertificadoDTOCopyWith<_CertificadoDTO> get copyWith =>
      __$CertificadoDTOCopyWithImpl<_CertificadoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CertificadoDTOToJson(this);
  }
}

abstract class _CertificadoDTO extends CertificadoDTO {
  factory _CertificadoDTO(
      {required String uuid,
      required String titulo,
      required String fechaExpedicion,
      required String descripcion}) = _$_CertificadoDTO;
  _CertificadoDTO._() : super._();

  factory _CertificadoDTO.fromJson(Map<String, dynamic> json) =
      _$_CertificadoDTO.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get titulo => throw _privateConstructorUsedError;
  @override
  String get fechaExpedicion => throw _privateConstructorUsedError;
  @override
  String get descripcion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CertificadoDTOCopyWith<_CertificadoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
