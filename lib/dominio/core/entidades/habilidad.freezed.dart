// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'habilidad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HabilidadTearOff {
  const _$HabilidadTearOff();

  _Habilidad call(
      {required Identificador uuid,
      required TituloHabilidad tituloHabilidad,
      required Categoria categoria}) {
    return _Habilidad(
      uuid: uuid,
      tituloHabilidad: tituloHabilidad,
      categoria: categoria,
    );
  }
}

/// @nodoc
const $Habilidad = _$HabilidadTearOff();

/// @nodoc
mixin _$Habilidad {
  Identificador get uuid => throw _privateConstructorUsedError;
  TituloHabilidad get tituloHabilidad => throw _privateConstructorUsedError;
  Categoria get categoria => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabilidadCopyWith<Habilidad> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabilidadCopyWith<$Res> {
  factory $HabilidadCopyWith(Habilidad value, $Res Function(Habilidad) then) =
      _$HabilidadCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuid,
      TituloHabilidad tituloHabilidad,
      Categoria categoria});
}

/// @nodoc
class _$HabilidadCopyWithImpl<$Res> implements $HabilidadCopyWith<$Res> {
  _$HabilidadCopyWithImpl(this._value, this._then);

  final Habilidad _value;
  // ignore: unused_field
  final $Res Function(Habilidad) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? tituloHabilidad = freezed,
    Object? categoria = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      tituloHabilidad: tituloHabilidad == freezed
          ? _value.tituloHabilidad
          : tituloHabilidad // ignore: cast_nullable_to_non_nullable
              as TituloHabilidad,
      categoria: categoria == freezed
          ? _value.categoria
          : categoria // ignore: cast_nullable_to_non_nullable
              as Categoria,
    ));
  }
}

/// @nodoc
abstract class _$HabilidadCopyWith<$Res> implements $HabilidadCopyWith<$Res> {
  factory _$HabilidadCopyWith(
          _Habilidad value, $Res Function(_Habilidad) then) =
      __$HabilidadCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identificador uuid,
      TituloHabilidad tituloHabilidad,
      Categoria categoria});
}

/// @nodoc
class __$HabilidadCopyWithImpl<$Res> extends _$HabilidadCopyWithImpl<$Res>
    implements _$HabilidadCopyWith<$Res> {
  __$HabilidadCopyWithImpl(_Habilidad _value, $Res Function(_Habilidad) _then)
      : super(_value, (v) => _then(v as _Habilidad));

  @override
  _Habilidad get _value => super._value as _Habilidad;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? tituloHabilidad = freezed,
    Object? categoria = freezed,
  }) {
    return _then(_Habilidad(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      tituloHabilidad: tituloHabilidad == freezed
          ? _value.tituloHabilidad
          : tituloHabilidad // ignore: cast_nullable_to_non_nullable
              as TituloHabilidad,
      categoria: categoria == freezed
          ? _value.categoria
          : categoria // ignore: cast_nullable_to_non_nullable
              as Categoria,
    ));
  }
}

/// @nodoc

@Implements(IEntitidad)
class _$_Habilidad implements _Habilidad {
  const _$_Habilidad(
      {required this.uuid,
      required this.tituloHabilidad,
      required this.categoria});

  @override
  final Identificador uuid;
  @override
  final TituloHabilidad tituloHabilidad;
  @override
  final Categoria categoria;

  @override
  String toString() {
    return 'Habilidad(uuid: $uuid, tituloHabilidad: $tituloHabilidad, categoria: $categoria)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Habilidad &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.tituloHabilidad, tituloHabilidad) ||
                const DeepCollectionEquality()
                    .equals(other.tituloHabilidad, tituloHabilidad)) &&
            (identical(other.categoria, categoria) ||
                const DeepCollectionEquality()
                    .equals(other.categoria, categoria)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(tituloHabilidad) ^
      const DeepCollectionEquality().hash(categoria);

  @JsonKey(ignore: true)
  @override
  _$HabilidadCopyWith<_Habilidad> get copyWith =>
      __$HabilidadCopyWithImpl<_Habilidad>(this, _$identity);
}

abstract class _Habilidad implements Habilidad, IEntitidad {
  const factory _Habilidad(
      {required Identificador uuid,
      required TituloHabilidad tituloHabilidad,
      required Categoria categoria}) = _$_Habilidad;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  TituloHabilidad get tituloHabilidad => throw _privateConstructorUsedError;
  @override
  Categoria get categoria => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HabilidadCopyWith<_Habilidad> get copyWith =>
      throw _privateConstructorUsedError;
}
