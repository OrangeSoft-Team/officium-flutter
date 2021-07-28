// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'detalle_curso_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetalleCursoDTO _$DetalleCursoDTOFromJson(Map<String, dynamic> json) {
  return _DetalleCursoDTO.fromJson(json);
}

/// @nodoc
class _$DetalleCursoDTOTearOff {
  const _$DetalleCursoDTOTearOff();

  _DetalleCursoDTO call(
      {required String uuid,
      required String titulo,
      required String estatus,
      required int valorDuracion,
      required String escalaDuracion,
      required String fechaCreacion,
      required List<LeccionListaDTO> lecciones,
      required List<String> habilidades,
      required String descripcion,
      String? fechaUltimaModificacion}) {
    return _DetalleCursoDTO(
      uuid: uuid,
      titulo: titulo,
      estatus: estatus,
      valorDuracion: valorDuracion,
      escalaDuracion: escalaDuracion,
      fechaCreacion: fechaCreacion,
      lecciones: lecciones,
      habilidades: habilidades,
      descripcion: descripcion,
      fechaUltimaModificacion: fechaUltimaModificacion,
    );
  }

  DetalleCursoDTO fromJson(Map<String, Object> json) {
    return DetalleCursoDTO.fromJson(json);
  }
}

/// @nodoc
const $DetalleCursoDTO = _$DetalleCursoDTOTearOff();

/// @nodoc
mixin _$DetalleCursoDTO {
  String get uuid => throw _privateConstructorUsedError;
  String get titulo => throw _privateConstructorUsedError;
  String get estatus => throw _privateConstructorUsedError;
  int get valorDuracion => throw _privateConstructorUsedError;
  String get escalaDuracion => throw _privateConstructorUsedError;
  String get fechaCreacion => throw _privateConstructorUsedError;
  List<LeccionListaDTO> get lecciones => throw _privateConstructorUsedError;
  List<String> get habilidades => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  String? get fechaUltimaModificacion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetalleCursoDTOCopyWith<DetalleCursoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetalleCursoDTOCopyWith<$Res> {
  factory $DetalleCursoDTOCopyWith(
          DetalleCursoDTO value, $Res Function(DetalleCursoDTO) then) =
      _$DetalleCursoDTOCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String titulo,
      String estatus,
      int valorDuracion,
      String escalaDuracion,
      String fechaCreacion,
      List<LeccionListaDTO> lecciones,
      List<String> habilidades,
      String descripcion,
      String? fechaUltimaModificacion});
}

/// @nodoc
class _$DetalleCursoDTOCopyWithImpl<$Res>
    implements $DetalleCursoDTOCopyWith<$Res> {
  _$DetalleCursoDTOCopyWithImpl(this._value, this._then);

  final DetalleCursoDTO _value;
  // ignore: unused_field
  final $Res Function(DetalleCursoDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
    Object? estatus = freezed,
    Object? valorDuracion = freezed,
    Object? escalaDuracion = freezed,
    Object? fechaCreacion = freezed,
    Object? lecciones = freezed,
    Object? habilidades = freezed,
    Object? descripcion = freezed,
    Object? fechaUltimaModificacion = freezed,
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
      valorDuracion: valorDuracion == freezed
          ? _value.valorDuracion
          : valorDuracion // ignore: cast_nullable_to_non_nullable
              as int,
      escalaDuracion: escalaDuracion == freezed
          ? _value.escalaDuracion
          : escalaDuracion // ignore: cast_nullable_to_non_nullable
              as String,
      fechaCreacion: fechaCreacion == freezed
          ? _value.fechaCreacion
          : fechaCreacion // ignore: cast_nullable_to_non_nullable
              as String,
      lecciones: lecciones == freezed
          ? _value.lecciones
          : lecciones // ignore: cast_nullable_to_non_nullable
              as List<LeccionListaDTO>,
      habilidades: habilidades == freezed
          ? _value.habilidades
          : habilidades // ignore: cast_nullable_to_non_nullable
              as List<String>,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      fechaUltimaModificacion: fechaUltimaModificacion == freezed
          ? _value.fechaUltimaModificacion
          : fechaUltimaModificacion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DetalleCursoDTOCopyWith<$Res>
    implements $DetalleCursoDTOCopyWith<$Res> {
  factory _$DetalleCursoDTOCopyWith(
          _DetalleCursoDTO value, $Res Function(_DetalleCursoDTO) then) =
      __$DetalleCursoDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String titulo,
      String estatus,
      int valorDuracion,
      String escalaDuracion,
      String fechaCreacion,
      List<LeccionListaDTO> lecciones,
      List<String> habilidades,
      String descripcion,
      String? fechaUltimaModificacion});
}

/// @nodoc
class __$DetalleCursoDTOCopyWithImpl<$Res>
    extends _$DetalleCursoDTOCopyWithImpl<$Res>
    implements _$DetalleCursoDTOCopyWith<$Res> {
  __$DetalleCursoDTOCopyWithImpl(
      _DetalleCursoDTO _value, $Res Function(_DetalleCursoDTO) _then)
      : super(_value, (v) => _then(v as _DetalleCursoDTO));

  @override
  _DetalleCursoDTO get _value => super._value as _DetalleCursoDTO;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? titulo = freezed,
    Object? estatus = freezed,
    Object? valorDuracion = freezed,
    Object? escalaDuracion = freezed,
    Object? fechaCreacion = freezed,
    Object? lecciones = freezed,
    Object? habilidades = freezed,
    Object? descripcion = freezed,
    Object? fechaUltimaModificacion = freezed,
  }) {
    return _then(_DetalleCursoDTO(
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
      valorDuracion: valorDuracion == freezed
          ? _value.valorDuracion
          : valorDuracion // ignore: cast_nullable_to_non_nullable
              as int,
      escalaDuracion: escalaDuracion == freezed
          ? _value.escalaDuracion
          : escalaDuracion // ignore: cast_nullable_to_non_nullable
              as String,
      fechaCreacion: fechaCreacion == freezed
          ? _value.fechaCreacion
          : fechaCreacion // ignore: cast_nullable_to_non_nullable
              as String,
      lecciones: lecciones == freezed
          ? _value.lecciones
          : lecciones // ignore: cast_nullable_to_non_nullable
              as List<LeccionListaDTO>,
      habilidades: habilidades == freezed
          ? _value.habilidades
          : habilidades // ignore: cast_nullable_to_non_nullable
              as List<String>,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      fechaUltimaModificacion: fechaUltimaModificacion == freezed
          ? _value.fechaUltimaModificacion
          : fechaUltimaModificacion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetalleCursoDTO extends _DetalleCursoDTO {
  _$_DetalleCursoDTO(
      {required this.uuid,
      required this.titulo,
      required this.estatus,
      required this.valorDuracion,
      required this.escalaDuracion,
      required this.fechaCreacion,
      required this.lecciones,
      required this.habilidades,
      required this.descripcion,
      this.fechaUltimaModificacion})
      : super._();

  factory _$_DetalleCursoDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_DetalleCursoDTOFromJson(json);

  @override
  final String uuid;
  @override
  final String titulo;
  @override
  final String estatus;
  @override
  final int valorDuracion;
  @override
  final String escalaDuracion;
  @override
  final String fechaCreacion;
  @override
  final List<LeccionListaDTO> lecciones;
  @override
  final List<String> habilidades;
  @override
  final String descripcion;
  @override
  final String? fechaUltimaModificacion;

  @override
  String toString() {
    return 'DetalleCursoDTO(uuid: $uuid, titulo: $titulo, estatus: $estatus, valorDuracion: $valorDuracion, escalaDuracion: $escalaDuracion, fechaCreacion: $fechaCreacion, lecciones: $lecciones, habilidades: $habilidades, descripcion: $descripcion, fechaUltimaModificacion: $fechaUltimaModificacion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetalleCursoDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.titulo, titulo) ||
                const DeepCollectionEquality().equals(other.titulo, titulo)) &&
            (identical(other.estatus, estatus) ||
                const DeepCollectionEquality()
                    .equals(other.estatus, estatus)) &&
            (identical(other.valorDuracion, valorDuracion) ||
                const DeepCollectionEquality()
                    .equals(other.valorDuracion, valorDuracion)) &&
            (identical(other.escalaDuracion, escalaDuracion) ||
                const DeepCollectionEquality()
                    .equals(other.escalaDuracion, escalaDuracion)) &&
            (identical(other.fechaCreacion, fechaCreacion) ||
                const DeepCollectionEquality()
                    .equals(other.fechaCreacion, fechaCreacion)) &&
            (identical(other.lecciones, lecciones) ||
                const DeepCollectionEquality()
                    .equals(other.lecciones, lecciones)) &&
            (identical(other.habilidades, habilidades) ||
                const DeepCollectionEquality()
                    .equals(other.habilidades, habilidades)) &&
            (identical(other.descripcion, descripcion) ||
                const DeepCollectionEquality()
                    .equals(other.descripcion, descripcion)) &&
            (identical(
                    other.fechaUltimaModificacion, fechaUltimaModificacion) ||
                const DeepCollectionEquality().equals(
                    other.fechaUltimaModificacion, fechaUltimaModificacion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(titulo) ^
      const DeepCollectionEquality().hash(estatus) ^
      const DeepCollectionEquality().hash(valorDuracion) ^
      const DeepCollectionEquality().hash(escalaDuracion) ^
      const DeepCollectionEquality().hash(fechaCreacion) ^
      const DeepCollectionEquality().hash(lecciones) ^
      const DeepCollectionEquality().hash(habilidades) ^
      const DeepCollectionEquality().hash(descripcion) ^
      const DeepCollectionEquality().hash(fechaUltimaModificacion);

  @JsonKey(ignore: true)
  @override
  _$DetalleCursoDTOCopyWith<_DetalleCursoDTO> get copyWith =>
      __$DetalleCursoDTOCopyWithImpl<_DetalleCursoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetalleCursoDTOToJson(this);
  }
}

abstract class _DetalleCursoDTO extends DetalleCursoDTO {
  factory _DetalleCursoDTO(
      {required String uuid,
      required String titulo,
      required String estatus,
      required int valorDuracion,
      required String escalaDuracion,
      required String fechaCreacion,
      required List<LeccionListaDTO> lecciones,
      required List<String> habilidades,
      required String descripcion,
      String? fechaUltimaModificacion}) = _$_DetalleCursoDTO;
  _DetalleCursoDTO._() : super._();

  factory _DetalleCursoDTO.fromJson(Map<String, dynamic> json) =
      _$_DetalleCursoDTO.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get titulo => throw _privateConstructorUsedError;
  @override
  String get estatus => throw _privateConstructorUsedError;
  @override
  int get valorDuracion => throw _privateConstructorUsedError;
  @override
  String get escalaDuracion => throw _privateConstructorUsedError;
  @override
  String get fechaCreacion => throw _privateConstructorUsedError;
  @override
  List<LeccionListaDTO> get lecciones => throw _privateConstructorUsedError;
  @override
  List<String> get habilidades => throw _privateConstructorUsedError;
  @override
  String get descripcion => throw _privateConstructorUsedError;
  @override
  String? get fechaUltimaModificacion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetalleCursoDTOCopyWith<_DetalleCursoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
