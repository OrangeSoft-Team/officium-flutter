// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pregunta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PreguntaTearOff {
  const _$PreguntaTearOff();

  _Pregunta call(
      {required Identificador uuid,
      required EnunciadoPregunta enunciadoPregunta,
      required TipoPregunta tipoPregunta,
      required PonderacionPregunta ponderacionPregunta}) {
    return _Pregunta(
      uuid: uuid,
      enunciadoPregunta: enunciadoPregunta,
      tipoPregunta: tipoPregunta,
      ponderacionPregunta: ponderacionPregunta,
    );
  }
}

/// @nodoc
const $Pregunta = _$PreguntaTearOff();

/// @nodoc
mixin _$Pregunta {
  Identificador get uuid => throw _privateConstructorUsedError;
  EnunciadoPregunta get enunciadoPregunta => throw _privateConstructorUsedError;
  TipoPregunta get tipoPregunta => throw _privateConstructorUsedError;
  PonderacionPregunta get ponderacionPregunta =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreguntaCopyWith<Pregunta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreguntaCopyWith<$Res> {
  factory $PreguntaCopyWith(Pregunta value, $Res Function(Pregunta) then) =
      _$PreguntaCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuid,
      EnunciadoPregunta enunciadoPregunta,
      TipoPregunta tipoPregunta,
      PonderacionPregunta ponderacionPregunta});
}

/// @nodoc
class _$PreguntaCopyWithImpl<$Res> implements $PreguntaCopyWith<$Res> {
  _$PreguntaCopyWithImpl(this._value, this._then);

  final Pregunta _value;
  // ignore: unused_field
  final $Res Function(Pregunta) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? enunciadoPregunta = freezed,
    Object? tipoPregunta = freezed,
    Object? ponderacionPregunta = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      enunciadoPregunta: enunciadoPregunta == freezed
          ? _value.enunciadoPregunta
          : enunciadoPregunta // ignore: cast_nullable_to_non_nullable
              as EnunciadoPregunta,
      tipoPregunta: tipoPregunta == freezed
          ? _value.tipoPregunta
          : tipoPregunta // ignore: cast_nullable_to_non_nullable
              as TipoPregunta,
      ponderacionPregunta: ponderacionPregunta == freezed
          ? _value.ponderacionPregunta
          : ponderacionPregunta // ignore: cast_nullable_to_non_nullable
              as PonderacionPregunta,
    ));
  }
}

/// @nodoc
abstract class _$PreguntaCopyWith<$Res> implements $PreguntaCopyWith<$Res> {
  factory _$PreguntaCopyWith(_Pregunta value, $Res Function(_Pregunta) then) =
      __$PreguntaCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identificador uuid,
      EnunciadoPregunta enunciadoPregunta,
      TipoPregunta tipoPregunta,
      PonderacionPregunta ponderacionPregunta});
}

/// @nodoc
class __$PreguntaCopyWithImpl<$Res> extends _$PreguntaCopyWithImpl<$Res>
    implements _$PreguntaCopyWith<$Res> {
  __$PreguntaCopyWithImpl(_Pregunta _value, $Res Function(_Pregunta) _then)
      : super(_value, (v) => _then(v as _Pregunta));

  @override
  _Pregunta get _value => super._value as _Pregunta;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? enunciadoPregunta = freezed,
    Object? tipoPregunta = freezed,
    Object? ponderacionPregunta = freezed,
  }) {
    return _then(_Pregunta(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      enunciadoPregunta: enunciadoPregunta == freezed
          ? _value.enunciadoPregunta
          : enunciadoPregunta // ignore: cast_nullable_to_non_nullable
              as EnunciadoPregunta,
      tipoPregunta: tipoPregunta == freezed
          ? _value.tipoPregunta
          : tipoPregunta // ignore: cast_nullable_to_non_nullable
              as TipoPregunta,
      ponderacionPregunta: ponderacionPregunta == freezed
          ? _value.ponderacionPregunta
          : ponderacionPregunta // ignore: cast_nullable_to_non_nullable
              as PonderacionPregunta,
    ));
  }
}

/// @nodoc

@Implements(IEntidad)
class _$_Pregunta implements _Pregunta {
  const _$_Pregunta(
      {required this.uuid,
      required this.enunciadoPregunta,
      required this.tipoPregunta,
      required this.ponderacionPregunta});

  @override
  final Identificador uuid;
  @override
  final EnunciadoPregunta enunciadoPregunta;
  @override
  final TipoPregunta tipoPregunta;
  @override
  final PonderacionPregunta ponderacionPregunta;

  @override
  String toString() {
    return 'Pregunta(uuid: $uuid, enunciadoPregunta: $enunciadoPregunta, tipoPregunta: $tipoPregunta, ponderacionPregunta: $ponderacionPregunta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pregunta &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.enunciadoPregunta, enunciadoPregunta) ||
                const DeepCollectionEquality()
                    .equals(other.enunciadoPregunta, enunciadoPregunta)) &&
            (identical(other.tipoPregunta, tipoPregunta) ||
                const DeepCollectionEquality()
                    .equals(other.tipoPregunta, tipoPregunta)) &&
            (identical(other.ponderacionPregunta, ponderacionPregunta) ||
                const DeepCollectionEquality()
                    .equals(other.ponderacionPregunta, ponderacionPregunta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(enunciadoPregunta) ^
      const DeepCollectionEquality().hash(tipoPregunta) ^
      const DeepCollectionEquality().hash(ponderacionPregunta);

  @JsonKey(ignore: true)
  @override
  _$PreguntaCopyWith<_Pregunta> get copyWith =>
      __$PreguntaCopyWithImpl<_Pregunta>(this, _$identity);
}

abstract class _Pregunta implements Pregunta, IEntidad {
  const factory _Pregunta(
      {required Identificador uuid,
      required EnunciadoPregunta enunciadoPregunta,
      required TipoPregunta tipoPregunta,
      required PonderacionPregunta ponderacionPregunta}) = _$_Pregunta;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  EnunciadoPregunta get enunciadoPregunta => throw _privateConstructorUsedError;
  @override
  TipoPregunta get tipoPregunta => throw _privateConstructorUsedError;
  @override
  PonderacionPregunta get ponderacionPregunta =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PreguntaCopyWith<_Pregunta> get copyWith =>
      throw _privateConstructorUsedError;
}
