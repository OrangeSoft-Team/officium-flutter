// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'curso.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CursoTearOff {
  const _$CursoTearOff();

  _Curso call(
      {required Identificador uuid,
      required TituloCurso tituloCurso,
      required Duracion duracionEstimada,
      required Fecha fechaCreacion,
      Fecha? fechaUltimaModificacion,
      required List<Habilidad> habilidades,
      required List<Leccion> lecciones,
      required Certificado certificado}) {
    return _Curso(
      uuid: uuid,
      tituloCurso: tituloCurso,
      duracionEstimada: duracionEstimada,
      fechaCreacion: fechaCreacion,
      fechaUltimaModificacion: fechaUltimaModificacion,
      habilidades: habilidades,
      lecciones: lecciones,
      certificado: certificado,
    );
  }
}

/// @nodoc
const $Curso = _$CursoTearOff();

/// @nodoc
mixin _$Curso {
  Identificador get uuid => throw _privateConstructorUsedError;
  TituloCurso get tituloCurso => throw _privateConstructorUsedError;
  Duracion get duracionEstimada => throw _privateConstructorUsedError;
  Fecha get fechaCreacion => throw _privateConstructorUsedError;
  Fecha? get fechaUltimaModificacion => throw _privateConstructorUsedError;
  List<Habilidad> get habilidades => throw _privateConstructorUsedError;
  List<Leccion> get lecciones => throw _privateConstructorUsedError;
  Certificado get certificado => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CursoCopyWith<Curso> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CursoCopyWith<$Res> {
  factory $CursoCopyWith(Curso value, $Res Function(Curso) then) =
      _$CursoCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuid,
      TituloCurso tituloCurso,
      Duracion duracionEstimada,
      Fecha fechaCreacion,
      Fecha? fechaUltimaModificacion,
      List<Habilidad> habilidades,
      List<Leccion> lecciones,
      Certificado certificado});

  $CertificadoCopyWith<$Res> get certificado;
}

/// @nodoc
class _$CursoCopyWithImpl<$Res> implements $CursoCopyWith<$Res> {
  _$CursoCopyWithImpl(this._value, this._then);

  final Curso _value;
  // ignore: unused_field
  final $Res Function(Curso) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? tituloCurso = freezed,
    Object? duracionEstimada = freezed,
    Object? fechaCreacion = freezed,
    Object? fechaUltimaModificacion = freezed,
    Object? habilidades = freezed,
    Object? lecciones = freezed,
    Object? certificado = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      tituloCurso: tituloCurso == freezed
          ? _value.tituloCurso
          : tituloCurso // ignore: cast_nullable_to_non_nullable
              as TituloCurso,
      duracionEstimada: duracionEstimada == freezed
          ? _value.duracionEstimada
          : duracionEstimada // ignore: cast_nullable_to_non_nullable
              as Duracion,
      fechaCreacion: fechaCreacion == freezed
          ? _value.fechaCreacion
          : fechaCreacion // ignore: cast_nullable_to_non_nullable
              as Fecha,
      fechaUltimaModificacion: fechaUltimaModificacion == freezed
          ? _value.fechaUltimaModificacion
          : fechaUltimaModificacion // ignore: cast_nullable_to_non_nullable
              as Fecha?,
      habilidades: habilidades == freezed
          ? _value.habilidades
          : habilidades // ignore: cast_nullable_to_non_nullable
              as List<Habilidad>,
      lecciones: lecciones == freezed
          ? _value.lecciones
          : lecciones // ignore: cast_nullable_to_non_nullable
              as List<Leccion>,
      certificado: certificado == freezed
          ? _value.certificado
          : certificado // ignore: cast_nullable_to_non_nullable
              as Certificado,
    ));
  }

  @override
  $CertificadoCopyWith<$Res> get certificado {
    return $CertificadoCopyWith<$Res>(_value.certificado, (value) {
      return _then(_value.copyWith(certificado: value));
    });
  }
}

/// @nodoc
abstract class _$CursoCopyWith<$Res> implements $CursoCopyWith<$Res> {
  factory _$CursoCopyWith(_Curso value, $Res Function(_Curso) then) =
      __$CursoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identificador uuid,
      TituloCurso tituloCurso,
      Duracion duracionEstimada,
      Fecha fechaCreacion,
      Fecha? fechaUltimaModificacion,
      List<Habilidad> habilidades,
      List<Leccion> lecciones,
      Certificado certificado});

  @override
  $CertificadoCopyWith<$Res> get certificado;
}

/// @nodoc
class __$CursoCopyWithImpl<$Res> extends _$CursoCopyWithImpl<$Res>
    implements _$CursoCopyWith<$Res> {
  __$CursoCopyWithImpl(_Curso _value, $Res Function(_Curso) _then)
      : super(_value, (v) => _then(v as _Curso));

  @override
  _Curso get _value => super._value as _Curso;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? tituloCurso = freezed,
    Object? duracionEstimada = freezed,
    Object? fechaCreacion = freezed,
    Object? fechaUltimaModificacion = freezed,
    Object? habilidades = freezed,
    Object? lecciones = freezed,
    Object? certificado = freezed,
  }) {
    return _then(_Curso(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      tituloCurso: tituloCurso == freezed
          ? _value.tituloCurso
          : tituloCurso // ignore: cast_nullable_to_non_nullable
              as TituloCurso,
      duracionEstimada: duracionEstimada == freezed
          ? _value.duracionEstimada
          : duracionEstimada // ignore: cast_nullable_to_non_nullable
              as Duracion,
      fechaCreacion: fechaCreacion == freezed
          ? _value.fechaCreacion
          : fechaCreacion // ignore: cast_nullable_to_non_nullable
              as Fecha,
      fechaUltimaModificacion: fechaUltimaModificacion == freezed
          ? _value.fechaUltimaModificacion
          : fechaUltimaModificacion // ignore: cast_nullable_to_non_nullable
              as Fecha?,
      habilidades: habilidades == freezed
          ? _value.habilidades
          : habilidades // ignore: cast_nullable_to_non_nullable
              as List<Habilidad>,
      lecciones: lecciones == freezed
          ? _value.lecciones
          : lecciones // ignore: cast_nullable_to_non_nullable
              as List<Leccion>,
      certificado: certificado == freezed
          ? _value.certificado
          : certificado // ignore: cast_nullable_to_non_nullable
              as Certificado,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_Curso implements _Curso {
  const _$_Curso(
      {required this.uuid,
      required this.tituloCurso,
      required this.duracionEstimada,
      required this.fechaCreacion,
      this.fechaUltimaModificacion,
      required this.habilidades,
      required this.lecciones,
      required this.certificado});

  @override
  final Identificador uuid;
  @override
  final TituloCurso tituloCurso;
  @override
  final Duracion duracionEstimada;
  @override
  final Fecha fechaCreacion;
  @override
  final Fecha? fechaUltimaModificacion;
  @override
  final List<Habilidad> habilidades;
  @override
  final List<Leccion> lecciones;
  @override
  final Certificado certificado;

  @override
  String toString() {
    return 'Curso(uuid: $uuid, tituloCurso: $tituloCurso, duracionEstimada: $duracionEstimada, fechaCreacion: $fechaCreacion, fechaUltimaModificacion: $fechaUltimaModificacion, habilidades: $habilidades, lecciones: $lecciones, certificado: $certificado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Curso &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.tituloCurso, tituloCurso) ||
                const DeepCollectionEquality()
                    .equals(other.tituloCurso, tituloCurso)) &&
            (identical(other.duracionEstimada, duracionEstimada) ||
                const DeepCollectionEquality()
                    .equals(other.duracionEstimada, duracionEstimada)) &&
            (identical(other.fechaCreacion, fechaCreacion) ||
                const DeepCollectionEquality()
                    .equals(other.fechaCreacion, fechaCreacion)) &&
            (identical(
                    other.fechaUltimaModificacion, fechaUltimaModificacion) ||
                const DeepCollectionEquality().equals(
                    other.fechaUltimaModificacion, fechaUltimaModificacion)) &&
            (identical(other.habilidades, habilidades) ||
                const DeepCollectionEquality()
                    .equals(other.habilidades, habilidades)) &&
            (identical(other.lecciones, lecciones) ||
                const DeepCollectionEquality()
                    .equals(other.lecciones, lecciones)) &&
            (identical(other.certificado, certificado) ||
                const DeepCollectionEquality()
                    .equals(other.certificado, certificado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(tituloCurso) ^
      const DeepCollectionEquality().hash(duracionEstimada) ^
      const DeepCollectionEquality().hash(fechaCreacion) ^
      const DeepCollectionEquality().hash(fechaUltimaModificacion) ^
      const DeepCollectionEquality().hash(habilidades) ^
      const DeepCollectionEquality().hash(lecciones) ^
      const DeepCollectionEquality().hash(certificado);

  @JsonKey(ignore: true)
  @override
  _$CursoCopyWith<_Curso> get copyWith =>
      __$CursoCopyWithImpl<_Curso>(this, _$identity);
}

abstract class _Curso implements Curso, IEntidad {
  const factory _Curso(
      {required Identificador uuid,
      required TituloCurso tituloCurso,
      required Duracion duracionEstimada,
      required Fecha fechaCreacion,
      Fecha? fechaUltimaModificacion,
      required List<Habilidad> habilidades,
      required List<Leccion> lecciones,
      required Certificado certificado}) = _$_Curso;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  TituloCurso get tituloCurso => throw _privateConstructorUsedError;
  @override
  Duracion get duracionEstimada => throw _privateConstructorUsedError;
  @override
  Fecha get fechaCreacion => throw _privateConstructorUsedError;
  @override
  Fecha? get fechaUltimaModificacion => throw _privateConstructorUsedError;
  @override
  List<Habilidad> get habilidades => throw _privateConstructorUsedError;
  @override
  List<Leccion> get lecciones => throw _privateConstructorUsedError;
  @override
  Certificado get certificado => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CursoCopyWith<_Curso> get copyWith => throw _privateConstructorUsedError;
}
