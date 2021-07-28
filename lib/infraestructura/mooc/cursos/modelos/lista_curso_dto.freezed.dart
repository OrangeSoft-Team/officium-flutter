// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lista_curso_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListaCursoDTO _$ListaCursoDTOFromJson(Map<String, dynamic> json) {
  return _ListaCursoDTO.fromJson(json);
}

/// @nodoc
class _$ListaCursoDTOTearOff {
  const _$ListaCursoDTOTearOff();

  _ListaCursoDTO call(
      {required String uuid,
      required String titulo,
      required String estatus,
      required String fechaCreacion}) {
    return _ListaCursoDTO(
      uuid: uuid,
      titulo: titulo,
      estatus: estatus,
      fechaCreacion: fechaCreacion,
    );
  }

  ListaCursoDTO fromJson(Map<String, Object> json) {
    return ListaCursoDTO.fromJson(json);
  }
}

/// @nodoc
const $ListaCursoDTO = _$ListaCursoDTOTearOff();

/// @nodoc
mixin _$ListaCursoDTO {
  String get uuid => throw _privateConstructorUsedError;
  String get titulo => throw _privateConstructorUsedError;
  String get estatus => throw _privateConstructorUsedError;
  String get fechaCreacion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListaCursoDTOCopyWith<ListaCursoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListaCursoDTOCopyWith<$Res> {
  factory $ListaCursoDTOCopyWith(
          ListaCursoDTO value, $Res Function(ListaCursoDTO) then) =
      _$ListaCursoDTOCopyWithImpl<$Res>;
  $Res call({String uuid, String titulo, String estatus, String fechaCreacion});
}

/// @nodoc
class _$ListaCursoDTOCopyWithImpl<$Res>
    implements $ListaCursoDTOCopyWith<$Res> {
  _$ListaCursoDTOCopyWithImpl(this._value, this._then);

  final ListaCursoDTO _value;
  // ignore: unused_field
  final $Res Function(ListaCursoDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
    Object? estatus = freezed,
    Object? fechaCreacion = freezed,
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
      estatus: estatus == freezed
          ? _value.estatus
          : estatus // ignore: cast_nullable_to_non_nullable
              as String,
      fechaCreacion: fechaCreacion == freezed
          ? _value.fechaCreacion
          : fechaCreacion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ListaCursoDTOCopyWith<$Res>
    implements $ListaCursoDTOCopyWith<$Res> {
  factory _$ListaCursoDTOCopyWith(
          _ListaCursoDTO value, $Res Function(_ListaCursoDTO) then) =
      __$ListaCursoDTOCopyWithImpl<$Res>;
  @override
  $Res call({String uuid, String titulo, String estatus, String fechaCreacion});
}

/// @nodoc
class __$ListaCursoDTOCopyWithImpl<$Res>
    extends _$ListaCursoDTOCopyWithImpl<$Res>
    implements _$ListaCursoDTOCopyWith<$Res> {
  __$ListaCursoDTOCopyWithImpl(
      _ListaCursoDTO _value, $Res Function(_ListaCursoDTO) _then)
      : super(_value, (v) => _then(v as _ListaCursoDTO));

  @override
  _ListaCursoDTO get _value => super._value as _ListaCursoDTO;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
    Object? estatus = freezed,
    Object? fechaCreacion = freezed,
  }) {
    return _then(_ListaCursoDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      titulo: titulo == freezed
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
      estatus: estatus == freezed
          ? _value.estatus
          : estatus // ignore: cast_nullable_to_non_nullable
              as String,
      fechaCreacion: fechaCreacion == freezed
          ? _value.fechaCreacion
          : fechaCreacion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListaCursoDTO extends _ListaCursoDTO {
  _$_ListaCursoDTO(
      {required this.uuid,
      required this.titulo,
      required this.estatus,
      required this.fechaCreacion})
      : super._();

  factory _$_ListaCursoDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ListaCursoDTOFromJson(json);

  @override
  final String uuid;
  @override
  final String titulo;
  @override
  final String estatus;
  @override
  final String fechaCreacion;

  @override
  String toString() {
    return 'ListaCursoDTO(uuid: $uuid, titulo: $titulo, estatus: $estatus, fechaCreacion: $fechaCreacion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListaCursoDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.titulo, titulo) ||
                const DeepCollectionEquality().equals(other.titulo, titulo)) &&
            (identical(other.estatus, estatus) ||
                const DeepCollectionEquality()
                    .equals(other.estatus, estatus)) &&
            (identical(other.fechaCreacion, fechaCreacion) ||
                const DeepCollectionEquality()
                    .equals(other.fechaCreacion, fechaCreacion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(titulo) ^
      const DeepCollectionEquality().hash(estatus) ^
      const DeepCollectionEquality().hash(fechaCreacion);

  @JsonKey(ignore: true)
  @override
  _$ListaCursoDTOCopyWith<_ListaCursoDTO> get copyWith =>
      __$ListaCursoDTOCopyWithImpl<_ListaCursoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ListaCursoDTOToJson(this);
  }
}

abstract class _ListaCursoDTO extends ListaCursoDTO {
  factory _ListaCursoDTO(
      {required String uuid,
      required String titulo,
      required String estatus,
      required String fechaCreacion}) = _$_ListaCursoDTO;
  _ListaCursoDTO._() : super._();

  factory _ListaCursoDTO.fromJson(Map<String, dynamic> json) =
      _$_ListaCursoDTO.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get titulo => throw _privateConstructorUsedError;
  @override
  String get estatus => throw _privateConstructorUsedError;
  @override
  String get fechaCreacion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListaCursoDTOCopyWith<_ListaCursoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
