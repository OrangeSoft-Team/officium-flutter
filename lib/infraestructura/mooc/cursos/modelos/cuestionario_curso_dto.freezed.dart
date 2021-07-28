// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cuestionario_curso_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CuestionarioCursoDTO _$CuestionarioCursoDTOFromJson(Map<String, dynamic> json) {
  return _CuestionarioCursoDTO.fromJson(json);
}

/// @nodoc
class _$CuestionarioCursoDTOTearOff {
  const _$CuestionarioCursoDTOTearOff();

  _CuestionarioCursoDTO call(
      {required String uuid,
      required int valorDuracion,
      required String escalaDuracion,
      required int intentosPermitidos,
      required List<PreguntaCuestionarioDTO> preguntasCuestionario}) {
    return _CuestionarioCursoDTO(
      uuid: uuid,
      valorDuracion: valorDuracion,
      escalaDuracion: escalaDuracion,
      intentosPermitidos: intentosPermitidos,
      preguntasCuestionario: preguntasCuestionario,
    );
  }

  CuestionarioCursoDTO fromJson(Map<String, Object> json) {
    return CuestionarioCursoDTO.fromJson(json);
  }
}

/// @nodoc
const $CuestionarioCursoDTO = _$CuestionarioCursoDTOTearOff();

/// @nodoc
mixin _$CuestionarioCursoDTO {
  String get uuid => throw _privateConstructorUsedError;
  int get valorDuracion => throw _privateConstructorUsedError;
  String get escalaDuracion => throw _privateConstructorUsedError;
  int get intentosPermitidos => throw _privateConstructorUsedError;
  List<PreguntaCuestionarioDTO> get preguntasCuestionario =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CuestionarioCursoDTOCopyWith<CuestionarioCursoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuestionarioCursoDTOCopyWith<$Res> {
  factory $CuestionarioCursoDTOCopyWith(CuestionarioCursoDTO value,
          $Res Function(CuestionarioCursoDTO) then) =
      _$CuestionarioCursoDTOCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      int valorDuracion,
      String escalaDuracion,
      int intentosPermitidos,
      List<PreguntaCuestionarioDTO> preguntasCuestionario});
}

/// @nodoc
class _$CuestionarioCursoDTOCopyWithImpl<$Res>
    implements $CuestionarioCursoDTOCopyWith<$Res> {
  _$CuestionarioCursoDTOCopyWithImpl(this._value, this._then);

  final CuestionarioCursoDTO _value;
  // ignore: unused_field
  final $Res Function(CuestionarioCursoDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? valorDuracion = freezed,
    Object? escalaDuracion = freezed,
    Object? intentosPermitidos = freezed,
    Object? preguntasCuestionario = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      valorDuracion: valorDuracion == freezed
          ? _value.valorDuracion
          : valorDuracion // ignore: cast_nullable_to_non_nullable
              as int,
      escalaDuracion: escalaDuracion == freezed
          ? _value.escalaDuracion
          : escalaDuracion // ignore: cast_nullable_to_non_nullable
              as String,
      intentosPermitidos: intentosPermitidos == freezed
          ? _value.intentosPermitidos
          : intentosPermitidos // ignore: cast_nullable_to_non_nullable
              as int,
      preguntasCuestionario: preguntasCuestionario == freezed
          ? _value.preguntasCuestionario
          : preguntasCuestionario // ignore: cast_nullable_to_non_nullable
              as List<PreguntaCuestionarioDTO>,
    ));
  }
}

/// @nodoc
abstract class _$CuestionarioCursoDTOCopyWith<$Res>
    implements $CuestionarioCursoDTOCopyWith<$Res> {
  factory _$CuestionarioCursoDTOCopyWith(_CuestionarioCursoDTO value,
          $Res Function(_CuestionarioCursoDTO) then) =
      __$CuestionarioCursoDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      int valorDuracion,
      String escalaDuracion,
      int intentosPermitidos,
      List<PreguntaCuestionarioDTO> preguntasCuestionario});
}

/// @nodoc
class __$CuestionarioCursoDTOCopyWithImpl<$Res>
    extends _$CuestionarioCursoDTOCopyWithImpl<$Res>
    implements _$CuestionarioCursoDTOCopyWith<$Res> {
  __$CuestionarioCursoDTOCopyWithImpl(
      _CuestionarioCursoDTO _value, $Res Function(_CuestionarioCursoDTO) _then)
      : super(_value, (v) => _then(v as _CuestionarioCursoDTO));

  @override
  _CuestionarioCursoDTO get _value => super._value as _CuestionarioCursoDTO;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? valorDuracion = freezed,
    Object? escalaDuracion = freezed,
    Object? intentosPermitidos = freezed,
    Object? preguntasCuestionario = freezed,
  }) {
    return _then(_CuestionarioCursoDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      valorDuracion: valorDuracion == freezed
          ? _value.valorDuracion
          : valorDuracion // ignore: cast_nullable_to_non_nullable
              as int,
      escalaDuracion: escalaDuracion == freezed
          ? _value.escalaDuracion
          : escalaDuracion // ignore: cast_nullable_to_non_nullable
              as String,
      intentosPermitidos: intentosPermitidos == freezed
          ? _value.intentosPermitidos
          : intentosPermitidos // ignore: cast_nullable_to_non_nullable
              as int,
      preguntasCuestionario: preguntasCuestionario == freezed
          ? _value.preguntasCuestionario
          : preguntasCuestionario // ignore: cast_nullable_to_non_nullable
              as List<PreguntaCuestionarioDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CuestionarioCursoDTO extends _CuestionarioCursoDTO {
  _$_CuestionarioCursoDTO(
      {required this.uuid,
      required this.valorDuracion,
      required this.escalaDuracion,
      required this.intentosPermitidos,
      required this.preguntasCuestionario})
      : super._();

  factory _$_CuestionarioCursoDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CuestionarioCursoDTOFromJson(json);

  @override
  final String uuid;
  @override
  final int valorDuracion;
  @override
  final String escalaDuracion;
  @override
  final int intentosPermitidos;
  @override
  final List<PreguntaCuestionarioDTO> preguntasCuestionario;

  @override
  String toString() {
    return 'CuestionarioCursoDTO(uuid: $uuid, valorDuracion: $valorDuracion, escalaDuracion: $escalaDuracion, intentosPermitidos: $intentosPermitidos, preguntasCuestionario: $preguntasCuestionario)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CuestionarioCursoDTO &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.valorDuracion, valorDuracion) ||
                const DeepCollectionEquality()
                    .equals(other.valorDuracion, valorDuracion)) &&
            (identical(other.escalaDuracion, escalaDuracion) ||
                const DeepCollectionEquality()
                    .equals(other.escalaDuracion, escalaDuracion)) &&
            (identical(other.intentosPermitidos, intentosPermitidos) ||
                const DeepCollectionEquality()
                    .equals(other.intentosPermitidos, intentosPermitidos)) &&
            (identical(other.preguntasCuestionario, preguntasCuestionario) ||
                const DeepCollectionEquality().equals(
                    other.preguntasCuestionario, preguntasCuestionario)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(valorDuracion) ^
      const DeepCollectionEquality().hash(escalaDuracion) ^
      const DeepCollectionEquality().hash(intentosPermitidos) ^
      const DeepCollectionEquality().hash(preguntasCuestionario);

  @JsonKey(ignore: true)
  @override
  _$CuestionarioCursoDTOCopyWith<_CuestionarioCursoDTO> get copyWith =>
      __$CuestionarioCursoDTOCopyWithImpl<_CuestionarioCursoDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CuestionarioCursoDTOToJson(this);
  }
}

abstract class _CuestionarioCursoDTO extends CuestionarioCursoDTO {
  factory _CuestionarioCursoDTO(
          {required String uuid,
          required int valorDuracion,
          required String escalaDuracion,
          required int intentosPermitidos,
          required List<PreguntaCuestionarioDTO> preguntasCuestionario}) =
      _$_CuestionarioCursoDTO;
  _CuestionarioCursoDTO._() : super._();

  factory _CuestionarioCursoDTO.fromJson(Map<String, dynamic> json) =
      _$_CuestionarioCursoDTO.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  int get valorDuracion => throw _privateConstructorUsedError;
  @override
  String get escalaDuracion => throw _privateConstructorUsedError;
  @override
  int get intentosPermitidos => throw _privateConstructorUsedError;
  @override
  List<PreguntaCuestionarioDTO> get preguntasCuestionario =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CuestionarioCursoDTOCopyWith<_CuestionarioCursoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
