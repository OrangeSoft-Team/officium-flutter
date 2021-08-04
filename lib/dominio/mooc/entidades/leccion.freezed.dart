// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'leccion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LeccionTearOff {
  const _$LeccionTearOff();

  _Leccion call(
      {required Identificador uuid,
      required TituloLeccion tituloLeccion,
      DescripcionLeccion? descripcionLeccion,
      ContenidoLeccion? contenidoLeccion}) {
    return _Leccion(
      uuid: uuid,
      tituloLeccion: tituloLeccion,
      descripcionLeccion: descripcionLeccion,
      contenidoLeccion: contenidoLeccion,
    );
  }
}

/// @nodoc
const $Leccion = _$LeccionTearOff();

/// @nodoc
mixin _$Leccion {
  Identificador get uuid => throw _privateConstructorUsedError;
  TituloLeccion get tituloLeccion => throw _privateConstructorUsedError;
  DescripcionLeccion? get descripcionLeccion =>
      throw _privateConstructorUsedError;
  ContenidoLeccion? get contenidoLeccion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeccionCopyWith<Leccion> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeccionCopyWith<$Res> {
  factory $LeccionCopyWith(Leccion value, $Res Function(Leccion) then) =
      _$LeccionCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuid,
      TituloLeccion tituloLeccion,
      DescripcionLeccion? descripcionLeccion,
      ContenidoLeccion? contenidoLeccion});
}

/// @nodoc
class _$LeccionCopyWithImpl<$Res> implements $LeccionCopyWith<$Res> {
  _$LeccionCopyWithImpl(this._value, this._then);

  final Leccion _value;
  // ignore: unused_field
  final $Res Function(Leccion) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? tituloLeccion = freezed,
    Object? descripcionLeccion = freezed,
    Object? contenidoLeccion = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      tituloLeccion: tituloLeccion == freezed
          ? _value.tituloLeccion
          : tituloLeccion // ignore: cast_nullable_to_non_nullable
              as TituloLeccion,
      descripcionLeccion: descripcionLeccion == freezed
          ? _value.descripcionLeccion
          : descripcionLeccion // ignore: cast_nullable_to_non_nullable
              as DescripcionLeccion?,
      contenidoLeccion: contenidoLeccion == freezed
          ? _value.contenidoLeccion
          : contenidoLeccion // ignore: cast_nullable_to_non_nullable
              as ContenidoLeccion?,
    ));
  }
}

/// @nodoc
abstract class _$LeccionCopyWith<$Res> implements $LeccionCopyWith<$Res> {
  factory _$LeccionCopyWith(_Leccion value, $Res Function(_Leccion) then) =
      __$LeccionCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identificador uuid,
      TituloLeccion tituloLeccion,
      DescripcionLeccion? descripcionLeccion,
      ContenidoLeccion? contenidoLeccion});
}

/// @nodoc
class __$LeccionCopyWithImpl<$Res> extends _$LeccionCopyWithImpl<$Res>
    implements _$LeccionCopyWith<$Res> {
  __$LeccionCopyWithImpl(_Leccion _value, $Res Function(_Leccion) _then)
      : super(_value, (v) => _then(v as _Leccion));

  @override
  _Leccion get _value => super._value as _Leccion;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? tituloLeccion = freezed,
    Object? descripcionLeccion = freezed,
    Object? contenidoLeccion = freezed,
  }) {
    return _then(_Leccion(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      tituloLeccion: tituloLeccion == freezed
          ? _value.tituloLeccion
          : tituloLeccion // ignore: cast_nullable_to_non_nullable
              as TituloLeccion,
      descripcionLeccion: descripcionLeccion == freezed
          ? _value.descripcionLeccion
          : descripcionLeccion // ignore: cast_nullable_to_non_nullable
              as DescripcionLeccion?,
      contenidoLeccion: contenidoLeccion == freezed
          ? _value.contenidoLeccion
          : contenidoLeccion // ignore: cast_nullable_to_non_nullable
              as ContenidoLeccion?,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_Leccion implements _Leccion {
  const _$_Leccion(
      {required this.uuid,
      required this.tituloLeccion,
      this.descripcionLeccion,
      this.contenidoLeccion});

  @override
  final Identificador uuid;
  @override
  final TituloLeccion tituloLeccion;
  @override
  final DescripcionLeccion? descripcionLeccion;
  @override
  final ContenidoLeccion? contenidoLeccion;

  @override
  String toString() {
    return 'Leccion(uuid: $uuid, tituloLeccion: $tituloLeccion, descripcionLeccion: $descripcionLeccion, contenidoLeccion: $contenidoLeccion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Leccion &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.tituloLeccion, tituloLeccion) ||
                const DeepCollectionEquality()
                    .equals(other.tituloLeccion, tituloLeccion)) &&
            (identical(other.descripcionLeccion, descripcionLeccion) ||
                const DeepCollectionEquality()
                    .equals(other.descripcionLeccion, descripcionLeccion)) &&
            (identical(other.contenidoLeccion, contenidoLeccion) ||
                const DeepCollectionEquality()
                    .equals(other.contenidoLeccion, contenidoLeccion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(tituloLeccion) ^
      const DeepCollectionEquality().hash(descripcionLeccion) ^
      const DeepCollectionEquality().hash(contenidoLeccion);

  @JsonKey(ignore: true)
  @override
  _$LeccionCopyWith<_Leccion> get copyWith =>
      __$LeccionCopyWithImpl<_Leccion>(this, _$identity);
}

abstract class _Leccion implements Leccion, IEntidad {
  const factory _Leccion(
      {required Identificador uuid,
      required TituloLeccion tituloLeccion,
      DescripcionLeccion? descripcionLeccion,
      ContenidoLeccion? contenidoLeccion}) = _$_Leccion;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  TituloLeccion get tituloLeccion => throw _privateConstructorUsedError;
  @override
  DescripcionLeccion? get descripcionLeccion =>
      throw _privateConstructorUsedError;
  @override
  ContenidoLeccion? get contenidoLeccion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LeccionCopyWith<_Leccion> get copyWith =>
      throw _privateConstructorUsedError;
}
