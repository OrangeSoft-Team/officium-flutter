// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'certificado_lista_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CertificadoListaDTO _$CertificadoListaDTOFromJson(Map<String, dynamic> json) {
  return _CertificadoListaDTO.fromJson(json);
}

/// @nodoc
class _$CertificadoListaDTOTearOff {
  const _$CertificadoListaDTOTearOff();

  _CertificadoListaDTO call(
      {required String uuid,
      required String titulo,
      required String fechaExpedicion}) {
    return _CertificadoListaDTO(
      uuid: uuid,
      titulo: titulo,
      fechaExpedicion: fechaExpedicion,
    );
  }

  CertificadoListaDTO fromJson(Map<String, Object> json) {
    return CertificadoListaDTO.fromJson(json);
  }
}

/// @nodoc
const $CertificadoListaDTO = _$CertificadoListaDTOTearOff();

/// @nodoc
mixin _$CertificadoListaDTO {
  String get uuid => throw _privateConstructorUsedError;
  String get titulo => throw _privateConstructorUsedError;
  String get fechaExpedicion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificadoListaDTOCopyWith<CertificadoListaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificadoListaDTOCopyWith<$Res> {
  factory $CertificadoListaDTOCopyWith(
          CertificadoListaDTO value, $Res Function(CertificadoListaDTO) then) =
      _$CertificadoListaDTOCopyWithImpl<$Res>;
  $Res call({String uuid, String titulo, String fechaExpedicion});
}

/// @nodoc
class _$CertificadoListaDTOCopyWithImpl<$Res>
    implements $CertificadoListaDTOCopyWith<$Res> {
  _$CertificadoListaDTOCopyWithImpl(this._value, this._then);

  final CertificadoListaDTO _value;
  // ignore: unused_field
  final $Res Function(CertificadoListaDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
    Object? fechaExpedicion = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$CertificadoListaDTOCopyWith<$Res>
    implements $CertificadoListaDTOCopyWith<$Res> {
  factory _$CertificadoListaDTOCopyWith(_CertificadoListaDTO value,
          $Res Function(_CertificadoListaDTO) then) =
      __$CertificadoListaDTOCopyWithImpl<$Res>;
  @override
  $Res call({String uuid, String titulo, String fechaExpedicion});
}

/// @nodoc
class __$CertificadoListaDTOCopyWithImpl<$Res>
    extends _$CertificadoListaDTOCopyWithImpl<$Res>
    implements _$CertificadoListaDTOCopyWith<$Res> {
  __$CertificadoListaDTOCopyWithImpl(
      _CertificadoListaDTO _value, $Res Function(_CertificadoListaDTO) _then)
      : super(_value, (v) => _then(v as _CertificadoListaDTO));

  @override
  _CertificadoListaDTO get _value => super._value as _CertificadoListaDTO;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
    Object? fechaExpedicion = freezed,
  }) {
    return _then(_CertificadoListaDTO(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CertificadoListaDTO extends _CertificadoListaDTO {
  _$_CertificadoListaDTO(
      {required this.uuid, required this.titulo, required this.fechaExpedicion})
      : super._();

  factory _$_CertificadoListaDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CertificadoListaDTOFromJson(json);

  @override
  final String uuid;
  @override
  final String titulo;
  @override
  final String fechaExpedicion;

  @override
  String toString() {
    return 'CertificadoListaDTO(uuid: $uuid, titulo: $titulo, fechaExpedicion: $fechaExpedicion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CertificadoListaDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.titulo, titulo) ||
                const DeepCollectionEquality().equals(other.titulo, titulo)) &&
            (identical(other.fechaExpedicion, fechaExpedicion) ||
                const DeepCollectionEquality()
                    .equals(other.fechaExpedicion, fechaExpedicion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(titulo) ^
      const DeepCollectionEquality().hash(fechaExpedicion);

  @JsonKey(ignore: true)
  @override
  _$CertificadoListaDTOCopyWith<_CertificadoListaDTO> get copyWith =>
      __$CertificadoListaDTOCopyWithImpl<_CertificadoListaDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CertificadoListaDTOToJson(this);
  }
}

abstract class _CertificadoListaDTO extends CertificadoListaDTO {
  factory _CertificadoListaDTO(
      {required String uuid,
      required String titulo,
      required String fechaExpedicion}) = _$_CertificadoListaDTO;
  _CertificadoListaDTO._() : super._();

  factory _CertificadoListaDTO.fromJson(Map<String, dynamic> json) =
      _$_CertificadoListaDTO.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get titulo => throw _privateConstructorUsedError;
  @override
  String get fechaExpedicion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CertificadoListaDTOCopyWith<_CertificadoListaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
