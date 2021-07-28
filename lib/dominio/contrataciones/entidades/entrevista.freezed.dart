// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'entrevista.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EntrevistaTearOff {
  const _$EntrevistaTearOff();

  _Entrevista call(
      {required Identificador uuidEntrevista,
      required AsuntoEntrevista asuntoEntrevista,
      required Fecha fechaPautada,
      required EstadoEntrevista estadoEntrevista,
      required Identificador uuidPersonalAdministrativo}) {
    return _Entrevista(
      uuidEntrevista: uuidEntrevista,
      asuntoEntrevista: asuntoEntrevista,
      fechaPautada: fechaPautada,
      estadoEntrevista: estadoEntrevista,
      uuidPersonalAdministrativo: uuidPersonalAdministrativo,
    );
  }
}

/// @nodoc
const $Entrevista = _$EntrevistaTearOff();

/// @nodoc
mixin _$Entrevista {
  Identificador get uuidEntrevista => throw _privateConstructorUsedError;
  AsuntoEntrevista get asuntoEntrevista => throw _privateConstructorUsedError;
  Fecha get fechaPautada => throw _privateConstructorUsedError;
  EstadoEntrevista get estadoEntrevista => throw _privateConstructorUsedError;
  Identificador get uuidPersonalAdministrativo =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntrevistaCopyWith<Entrevista> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntrevistaCopyWith<$Res> {
  factory $EntrevistaCopyWith(
          Entrevista value, $Res Function(Entrevista) then) =
      _$EntrevistaCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuidEntrevista,
      AsuntoEntrevista asuntoEntrevista,
      Fecha fechaPautada,
      EstadoEntrevista estadoEntrevista,
      Identificador uuidPersonalAdministrativo});
}

/// @nodoc
class _$EntrevistaCopyWithImpl<$Res> implements $EntrevistaCopyWith<$Res> {
  _$EntrevistaCopyWithImpl(this._value, this._then);

  final Entrevista _value;
  // ignore: unused_field
  final $Res Function(Entrevista) _then;

  @override
  $Res call({
    Object? uuidEntrevista = freezed,
    Object? asuntoEntrevista = freezed,
    Object? fechaPautada = freezed,
    Object? estadoEntrevista = freezed,
    Object? uuidPersonalAdministrativo = freezed,
  }) {
    return _then(_value.copyWith(
      uuidEntrevista: uuidEntrevista == freezed
          ? _value.uuidEntrevista
          : uuidEntrevista // ignore: cast_nullable_to_non_nullable
              as Identificador,
      asuntoEntrevista: asuntoEntrevista == freezed
          ? _value.asuntoEntrevista
          : asuntoEntrevista // ignore: cast_nullable_to_non_nullable
              as AsuntoEntrevista,
      fechaPautada: fechaPautada == freezed
          ? _value.fechaPautada
          : fechaPautada // ignore: cast_nullable_to_non_nullable
              as Fecha,
      estadoEntrevista: estadoEntrevista == freezed
          ? _value.estadoEntrevista
          : estadoEntrevista // ignore: cast_nullable_to_non_nullable
              as EstadoEntrevista,
      uuidPersonalAdministrativo: uuidPersonalAdministrativo == freezed
          ? _value.uuidPersonalAdministrativo
          : uuidPersonalAdministrativo // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc
abstract class _$EntrevistaCopyWith<$Res> implements $EntrevistaCopyWith<$Res> {
  factory _$EntrevistaCopyWith(
          _Entrevista value, $Res Function(_Entrevista) then) =
      __$EntrevistaCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identificador uuidEntrevista,
      AsuntoEntrevista asuntoEntrevista,
      Fecha fechaPautada,
      EstadoEntrevista estadoEntrevista,
      Identificador uuidPersonalAdministrativo});
}

/// @nodoc
class __$EntrevistaCopyWithImpl<$Res> extends _$EntrevistaCopyWithImpl<$Res>
    implements _$EntrevistaCopyWith<$Res> {
  __$EntrevistaCopyWithImpl(
      _Entrevista _value, $Res Function(_Entrevista) _then)
      : super(_value, (v) => _then(v as _Entrevista));

  @override
  _Entrevista get _value => super._value as _Entrevista;

  @override
  $Res call({
    Object? uuidEntrevista = freezed,
    Object? asuntoEntrevista = freezed,
    Object? fechaPautada = freezed,
    Object? estadoEntrevista = freezed,
    Object? uuidPersonalAdministrativo = freezed,
  }) {
    return _then(_Entrevista(
      uuidEntrevista: uuidEntrevista == freezed
          ? _value.uuidEntrevista
          : uuidEntrevista // ignore: cast_nullable_to_non_nullable
              as Identificador,
      asuntoEntrevista: asuntoEntrevista == freezed
          ? _value.asuntoEntrevista
          : asuntoEntrevista // ignore: cast_nullable_to_non_nullable
              as AsuntoEntrevista,
      fechaPautada: fechaPautada == freezed
          ? _value.fechaPautada
          : fechaPautada // ignore: cast_nullable_to_non_nullable
              as Fecha,
      estadoEntrevista: estadoEntrevista == freezed
          ? _value.estadoEntrevista
          : estadoEntrevista // ignore: cast_nullable_to_non_nullable
              as EstadoEntrevista,
      uuidPersonalAdministrativo: uuidPersonalAdministrativo == freezed
          ? _value.uuidPersonalAdministrativo
          : uuidPersonalAdministrativo // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_Entrevista implements _Entrevista {
  const _$_Entrevista(
      {required this.uuidEntrevista,
      required this.asuntoEntrevista,
      required this.fechaPautada,
      required this.estadoEntrevista,
      required this.uuidPersonalAdministrativo});

  @override
  final Identificador uuidEntrevista;
  @override
  final AsuntoEntrevista asuntoEntrevista;
  @override
  final Fecha fechaPautada;
  @override
  final EstadoEntrevista estadoEntrevista;
  @override
  final Identificador uuidPersonalAdministrativo;

  @override
  String toString() {
    return 'Entrevista(uuidEntrevista: $uuidEntrevista, asuntoEntrevista: $asuntoEntrevista, fechaPautada: $fechaPautada, estadoEntrevista: $estadoEntrevista, uuidPersonalAdministrativo: $uuidPersonalAdministrativo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Entrevista &&
            (identical(other.uuidEntrevista, uuidEntrevista) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEntrevista, uuidEntrevista)) &&
            (identical(other.asuntoEntrevista, asuntoEntrevista) ||
                const DeepCollectionEquality()
                    .equals(other.asuntoEntrevista, asuntoEntrevista)) &&
            (identical(other.fechaPautada, fechaPautada) ||
                const DeepCollectionEquality()
                    .equals(other.fechaPautada, fechaPautada)) &&
            (identical(other.estadoEntrevista, estadoEntrevista) ||
                const DeepCollectionEquality()
                    .equals(other.estadoEntrevista, estadoEntrevista)) &&
            (identical(other.uuidPersonalAdministrativo,
                    uuidPersonalAdministrativo) ||
                const DeepCollectionEquality().equals(
                    other.uuidPersonalAdministrativo,
                    uuidPersonalAdministrativo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuidEntrevista) ^
      const DeepCollectionEquality().hash(asuntoEntrevista) ^
      const DeepCollectionEquality().hash(fechaPautada) ^
      const DeepCollectionEquality().hash(estadoEntrevista) ^
      const DeepCollectionEquality().hash(uuidPersonalAdministrativo);

  @JsonKey(ignore: true)
  @override
  _$EntrevistaCopyWith<_Entrevista> get copyWith =>
      __$EntrevistaCopyWithImpl<_Entrevista>(this, _$identity);
}

abstract class _Entrevista implements Entrevista, IEntidad {
  const factory _Entrevista(
      {required Identificador uuidEntrevista,
      required AsuntoEntrevista asuntoEntrevista,
      required Fecha fechaPautada,
      required EstadoEntrevista estadoEntrevista,
      required Identificador uuidPersonalAdministrativo}) = _$_Entrevista;

  @override
  Identificador get uuidEntrevista => throw _privateConstructorUsedError;
  @override
  AsuntoEntrevista get asuntoEntrevista => throw _privateConstructorUsedError;
  @override
  Fecha get fechaPautada => throw _privateConstructorUsedError;
  @override
  EstadoEntrevista get estadoEntrevista => throw _privateConstructorUsedError;
  @override
  Identificador get uuidPersonalAdministrativo =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EntrevistaCopyWith<_Entrevista> get copyWith =>
      throw _privateConstructorUsedError;
}
