// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'estado_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EstadoDTO _$EstadoDTOFromJson(Map<String, dynamic> json) {
  return _EstadoDTO.fromJson(json);
}

/// @nodoc
class _$EstadoDTOTearOff {
  const _$EstadoDTOTearOff();

  _EstadoDTO call(
      {required String uuidPais,
      required String uuidEstado,
      required String nombreEstado}) {
    return _EstadoDTO(
      uuidPais: uuidPais,
      uuidEstado: uuidEstado,
      nombreEstado: nombreEstado,
    );
  }

  EstadoDTO fromJson(Map<String, Object> json) {
    return EstadoDTO.fromJson(json);
  }
}

/// @nodoc
const $EstadoDTO = _$EstadoDTOTearOff();

/// @nodoc
mixin _$EstadoDTO {
  String get uuidPais => throw _privateConstructorUsedError;
  String get uuidEstado => throw _privateConstructorUsedError;
  String get nombreEstado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstadoDTOCopyWith<EstadoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstadoDTOCopyWith<$Res> {
  factory $EstadoDTOCopyWith(EstadoDTO value, $Res Function(EstadoDTO) then) =
      _$EstadoDTOCopyWithImpl<$Res>;
  $Res call({String uuidPais, String uuidEstado, String nombreEstado});
}

/// @nodoc
class _$EstadoDTOCopyWithImpl<$Res> implements $EstadoDTOCopyWith<$Res> {
  _$EstadoDTOCopyWithImpl(this._value, this._then);

  final EstadoDTO _value;
  // ignore: unused_field
  final $Res Function(EstadoDTO) _then;

  @override
  $Res call({
    Object? uuidPais = freezed,
    Object? uuidEstado = freezed,
    Object? nombreEstado = freezed,
  }) {
    return _then(_value.copyWith(
      uuidPais: uuidPais == freezed
          ? _value.uuidPais
          : uuidPais // ignore: cast_nullable_to_non_nullable
              as String,
      uuidEstado: uuidEstado == freezed
          ? _value.uuidEstado
          : uuidEstado // ignore: cast_nullable_to_non_nullable
              as String,
      nombreEstado: nombreEstado == freezed
          ? _value.nombreEstado
          : nombreEstado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EstadoDTOCopyWith<$Res> implements $EstadoDTOCopyWith<$Res> {
  factory _$EstadoDTOCopyWith(
          _EstadoDTO value, $Res Function(_EstadoDTO) then) =
      __$EstadoDTOCopyWithImpl<$Res>;
  @override
  $Res call({String uuidPais, String uuidEstado, String nombreEstado});
}

/// @nodoc
class __$EstadoDTOCopyWithImpl<$Res> extends _$EstadoDTOCopyWithImpl<$Res>
    implements _$EstadoDTOCopyWith<$Res> {
  __$EstadoDTOCopyWithImpl(_EstadoDTO _value, $Res Function(_EstadoDTO) _then)
      : super(_value, (v) => _then(v as _EstadoDTO));

  @override
  _EstadoDTO get _value => super._value as _EstadoDTO;

  @override
  $Res call({
    Object? uuidPais = freezed,
    Object? uuidEstado = freezed,
    Object? nombreEstado = freezed,
  }) {
    return _then(_EstadoDTO(
      uuidPais: uuidPais == freezed
          ? _value.uuidPais
          : uuidPais // ignore: cast_nullable_to_non_nullable
              as String,
      uuidEstado: uuidEstado == freezed
          ? _value.uuidEstado
          : uuidEstado // ignore: cast_nullable_to_non_nullable
              as String,
      nombreEstado: nombreEstado == freezed
          ? _value.nombreEstado
          : nombreEstado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EstadoDTO extends _EstadoDTO {
  _$_EstadoDTO(
      {required this.uuidPais,
      required this.uuidEstado,
      required this.nombreEstado})
      : super._();

  factory _$_EstadoDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_EstadoDTOFromJson(json);

  @override
  final String uuidPais;
  @override
  final String uuidEstado;
  @override
  final String nombreEstado;

  @override
  String toString() {
    return 'EstadoDTO(uuidPais: $uuidPais, uuidEstado: $uuidEstado, nombreEstado: $nombreEstado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstadoDTO &&
            (identical(other.uuidPais, uuidPais) ||
                const DeepCollectionEquality()
                    .equals(other.uuidPais, uuidPais)) &&
            (identical(other.uuidEstado, uuidEstado) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEstado, uuidEstado)) &&
            (identical(other.nombreEstado, nombreEstado) ||
                const DeepCollectionEquality()
                    .equals(other.nombreEstado, nombreEstado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuidPais) ^
      const DeepCollectionEquality().hash(uuidEstado) ^
      const DeepCollectionEquality().hash(nombreEstado);

  @JsonKey(ignore: true)
  @override
  _$EstadoDTOCopyWith<_EstadoDTO> get copyWith =>
      __$EstadoDTOCopyWithImpl<_EstadoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EstadoDTOToJson(this);
  }
}

abstract class _EstadoDTO extends EstadoDTO {
  factory _EstadoDTO(
      {required String uuidPais,
      required String uuidEstado,
      required String nombreEstado}) = _$_EstadoDTO;
  _EstadoDTO._() : super._();

  factory _EstadoDTO.fromJson(Map<String, dynamic> json) =
      _$_EstadoDTO.fromJson;

  @override
  String get uuidPais => throw _privateConstructorUsedError;
  @override
  String get uuidEstado => throw _privateConstructorUsedError;
  @override
  String get nombreEstado => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EstadoDTOCopyWith<_EstadoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
