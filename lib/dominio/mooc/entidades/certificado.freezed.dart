// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'certificado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CertificadoTearOff {
  const _$CertificadoTearOff();

  _Certificado call(
      {required Identificador uuid,
      required Fecha fechaExpedicion,
      DescripcionCertificado? descripcionCertificado}) {
    return _Certificado(
      uuid: uuid,
      fechaExpedicion: fechaExpedicion,
      descripcionCertificado: descripcionCertificado,
    );
  }
}

/// @nodoc
const $Certificado = _$CertificadoTearOff();

/// @nodoc
mixin _$Certificado {
  Identificador get uuid => throw _privateConstructorUsedError;
  Fecha get fechaExpedicion => throw _privateConstructorUsedError;
  DescripcionCertificado? get descripcionCertificado =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CertificadoCopyWith<Certificado> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificadoCopyWith<$Res> {
  factory $CertificadoCopyWith(
          Certificado value, $Res Function(Certificado) then) =
      _$CertificadoCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuid,
      Fecha fechaExpedicion,
      DescripcionCertificado? descripcionCertificado});
}

/// @nodoc
class _$CertificadoCopyWithImpl<$Res> implements $CertificadoCopyWith<$Res> {
  _$CertificadoCopyWithImpl(this._value, this._then);

  final Certificado _value;
  // ignore: unused_field
  final $Res Function(Certificado) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? fechaExpedicion = freezed,
    Object? descripcionCertificado = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      fechaExpedicion: fechaExpedicion == freezed
          ? _value.fechaExpedicion
          : fechaExpedicion // ignore: cast_nullable_to_non_nullable
              as Fecha,
      descripcionCertificado: descripcionCertificado == freezed
          ? _value.descripcionCertificado
          : descripcionCertificado // ignore: cast_nullable_to_non_nullable
              as DescripcionCertificado?,
    ));
  }
}

/// @nodoc
abstract class _$CertificadoCopyWith<$Res>
    implements $CertificadoCopyWith<$Res> {
  factory _$CertificadoCopyWith(
          _Certificado value, $Res Function(_Certificado) then) =
      __$CertificadoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identificador uuid,
      Fecha fechaExpedicion,
      DescripcionCertificado? descripcionCertificado});
}

/// @nodoc
class __$CertificadoCopyWithImpl<$Res> extends _$CertificadoCopyWithImpl<$Res>
    implements _$CertificadoCopyWith<$Res> {
  __$CertificadoCopyWithImpl(
      _Certificado _value, $Res Function(_Certificado) _then)
      : super(_value, (v) => _then(v as _Certificado));

  @override
  _Certificado get _value => super._value as _Certificado;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? fechaExpedicion = freezed,
    Object? descripcionCertificado = freezed,
  }) {
    return _then(_Certificado(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      fechaExpedicion: fechaExpedicion == freezed
          ? _value.fechaExpedicion
          : fechaExpedicion // ignore: cast_nullable_to_non_nullable
              as Fecha,
      descripcionCertificado: descripcionCertificado == freezed
          ? _value.descripcionCertificado
          : descripcionCertificado // ignore: cast_nullable_to_non_nullable
              as DescripcionCertificado?,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_Certificado implements _Certificado {
  const _$_Certificado(
      {required this.uuid,
      required this.fechaExpedicion,
      this.descripcionCertificado});

  @override
  final Identificador uuid;
  @override
  final Fecha fechaExpedicion;
  @override
  final DescripcionCertificado? descripcionCertificado;

  @override
  String toString() {
    return 'Certificado(uuid: $uuid, fechaExpedicion: $fechaExpedicion, descripcionCertificado: $descripcionCertificado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Certificado &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.fechaExpedicion, fechaExpedicion) ||
                const DeepCollectionEquality()
                    .equals(other.fechaExpedicion, fechaExpedicion)) &&
            (identical(other.descripcionCertificado, descripcionCertificado) ||
                const DeepCollectionEquality().equals(
                    other.descripcionCertificado, descripcionCertificado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(fechaExpedicion) ^
      const DeepCollectionEquality().hash(descripcionCertificado);

  @JsonKey(ignore: true)
  @override
  _$CertificadoCopyWith<_Certificado> get copyWith =>
      __$CertificadoCopyWithImpl<_Certificado>(this, _$identity);
}

abstract class _Certificado implements Certificado, IEntidad {
  const factory _Certificado(
      {required Identificador uuid,
      required Fecha fechaExpedicion,
      DescripcionCertificado? descripcionCertificado}) = _$_Certificado;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  Fecha get fechaExpedicion => throw _privateConstructorUsedError;
  @override
  DescripcionCertificado? get descripcionCertificado =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CertificadoCopyWith<_Certificado> get copyWith =>
      throw _privateConstructorUsedError;
}
