// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'postular_oferta_laboral_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostularOfertaLaboralEventTearOff {
  const _$PostularOfertaLaboralEventTearOff();

  _ComentarioCambiado comentarioCambiado(String comentarioOfertaLaboral) {
    return _ComentarioCambiado(
      comentarioOfertaLaboral,
    );
  }

  _PostulacionRealizada postulacionRealizada(Identificador uuidOfertaLaboral,
      Identificador uuidEmpleado, Identificador uuidEmpresa) {
    return _PostulacionRealizada(
      uuidOfertaLaboral,
      uuidEmpleado,
      uuidEmpresa,
    );
  }
}

/// @nodoc
const $PostularOfertaLaboralEvent = _$PostularOfertaLaboralEventTearOff();

/// @nodoc
mixin _$PostularOfertaLaboralEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String comentarioOfertaLaboral)
        comentarioCambiado,
    required TResult Function(Identificador uuidOfertaLaboral,
            Identificador uuidEmpleado, Identificador uuidEmpresa)
        postulacionRealizada,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String comentarioOfertaLaboral)? comentarioCambiado,
    TResult Function(Identificador uuidOfertaLaboral,
            Identificador uuidEmpleado, Identificador uuidEmpresa)?
        postulacionRealizada,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComentarioCambiado value) comentarioCambiado,
    required TResult Function(_PostulacionRealizada value) postulacionRealizada,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComentarioCambiado value)? comentarioCambiado,
    TResult Function(_PostulacionRealizada value)? postulacionRealizada,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostularOfertaLaboralEventCopyWith<$Res> {
  factory $PostularOfertaLaboralEventCopyWith(PostularOfertaLaboralEvent value,
          $Res Function(PostularOfertaLaboralEvent) then) =
      _$PostularOfertaLaboralEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostularOfertaLaboralEventCopyWithImpl<$Res>
    implements $PostularOfertaLaboralEventCopyWith<$Res> {
  _$PostularOfertaLaboralEventCopyWithImpl(this._value, this._then);

  final PostularOfertaLaboralEvent _value;
  // ignore: unused_field
  final $Res Function(PostularOfertaLaboralEvent) _then;
}

/// @nodoc
abstract class _$ComentarioCambiadoCopyWith<$Res> {
  factory _$ComentarioCambiadoCopyWith(
          _ComentarioCambiado value, $Res Function(_ComentarioCambiado) then) =
      __$ComentarioCambiadoCopyWithImpl<$Res>;
  $Res call({String comentarioOfertaLaboral});
}

/// @nodoc
class __$ComentarioCambiadoCopyWithImpl<$Res>
    extends _$PostularOfertaLaboralEventCopyWithImpl<$Res>
    implements _$ComentarioCambiadoCopyWith<$Res> {
  __$ComentarioCambiadoCopyWithImpl(
      _ComentarioCambiado _value, $Res Function(_ComentarioCambiado) _then)
      : super(_value, (v) => _then(v as _ComentarioCambiado));

  @override
  _ComentarioCambiado get _value => super._value as _ComentarioCambiado;

  @override
  $Res call({
    Object? comentarioOfertaLaboral = freezed,
  }) {
    return _then(_ComentarioCambiado(
      comentarioOfertaLaboral == freezed
          ? _value.comentarioOfertaLaboral
          : comentarioOfertaLaboral // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ComentarioCambiado implements _ComentarioCambiado {
  const _$_ComentarioCambiado(this.comentarioOfertaLaboral);

  @override
  final String comentarioOfertaLaboral;

  @override
  String toString() {
    return 'PostularOfertaLaboralEvent.comentarioCambiado(comentarioOfertaLaboral: $comentarioOfertaLaboral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ComentarioCambiado &&
            (identical(
                    other.comentarioOfertaLaboral, comentarioOfertaLaboral) ||
                const DeepCollectionEquality().equals(
                    other.comentarioOfertaLaboral, comentarioOfertaLaboral)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comentarioOfertaLaboral);

  @JsonKey(ignore: true)
  @override
  _$ComentarioCambiadoCopyWith<_ComentarioCambiado> get copyWith =>
      __$ComentarioCambiadoCopyWithImpl<_ComentarioCambiado>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String comentarioOfertaLaboral)
        comentarioCambiado,
    required TResult Function(Identificador uuidOfertaLaboral,
            Identificador uuidEmpleado, Identificador uuidEmpresa)
        postulacionRealizada,
  }) {
    return comentarioCambiado(comentarioOfertaLaboral);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String comentarioOfertaLaboral)? comentarioCambiado,
    TResult Function(Identificador uuidOfertaLaboral,
            Identificador uuidEmpleado, Identificador uuidEmpresa)?
        postulacionRealizada,
    required TResult orElse(),
  }) {
    if (comentarioCambiado != null) {
      return comentarioCambiado(comentarioOfertaLaboral);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComentarioCambiado value) comentarioCambiado,
    required TResult Function(_PostulacionRealizada value) postulacionRealizada,
  }) {
    return comentarioCambiado(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComentarioCambiado value)? comentarioCambiado,
    TResult Function(_PostulacionRealizada value)? postulacionRealizada,
    required TResult orElse(),
  }) {
    if (comentarioCambiado != null) {
      return comentarioCambiado(this);
    }
    return orElse();
  }
}

abstract class _ComentarioCambiado implements PostularOfertaLaboralEvent {
  const factory _ComentarioCambiado(String comentarioOfertaLaboral) =
      _$_ComentarioCambiado;

  String get comentarioOfertaLaboral => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ComentarioCambiadoCopyWith<_ComentarioCambiado> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostulacionRealizadaCopyWith<$Res> {
  factory _$PostulacionRealizadaCopyWith(_PostulacionRealizada value,
          $Res Function(_PostulacionRealizada) then) =
      __$PostulacionRealizadaCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuidOfertaLaboral,
      Identificador uuidEmpleado,
      Identificador uuidEmpresa});
}

/// @nodoc
class __$PostulacionRealizadaCopyWithImpl<$Res>
    extends _$PostularOfertaLaboralEventCopyWithImpl<$Res>
    implements _$PostulacionRealizadaCopyWith<$Res> {
  __$PostulacionRealizadaCopyWithImpl(
      _PostulacionRealizada _value, $Res Function(_PostulacionRealizada) _then)
      : super(_value, (v) => _then(v as _PostulacionRealizada));

  @override
  _PostulacionRealizada get _value => super._value as _PostulacionRealizada;

  @override
  $Res call({
    Object? uuidOfertaLaboral = freezed,
    Object? uuidEmpleado = freezed,
    Object? uuidEmpresa = freezed,
  }) {
    return _then(_PostulacionRealizada(
      uuidOfertaLaboral == freezed
          ? _value.uuidOfertaLaboral
          : uuidOfertaLaboral // ignore: cast_nullable_to_non_nullable
              as Identificador,
      uuidEmpleado == freezed
          ? _value.uuidEmpleado
          : uuidEmpleado // ignore: cast_nullable_to_non_nullable
              as Identificador,
      uuidEmpresa == freezed
          ? _value.uuidEmpresa
          : uuidEmpresa // ignore: cast_nullable_to_non_nullable
              as Identificador,
    ));
  }
}

/// @nodoc

class _$_PostulacionRealizada implements _PostulacionRealizada {
  const _$_PostulacionRealizada(
      this.uuidOfertaLaboral, this.uuidEmpleado, this.uuidEmpresa);

  @override
  final Identificador uuidOfertaLaboral;
  @override
  final Identificador uuidEmpleado;
  @override
  final Identificador uuidEmpresa;

  @override
  String toString() {
    return 'PostularOfertaLaboralEvent.postulacionRealizada(uuidOfertaLaboral: $uuidOfertaLaboral, uuidEmpleado: $uuidEmpleado, uuidEmpresa: $uuidEmpresa)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostulacionRealizada &&
            (identical(other.uuidOfertaLaboral, uuidOfertaLaboral) ||
                const DeepCollectionEquality()
                    .equals(other.uuidOfertaLaboral, uuidOfertaLaboral)) &&
            (identical(other.uuidEmpleado, uuidEmpleado) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEmpleado, uuidEmpleado)) &&
            (identical(other.uuidEmpresa, uuidEmpresa) ||
                const DeepCollectionEquality()
                    .equals(other.uuidEmpresa, uuidEmpresa)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuidOfertaLaboral) ^
      const DeepCollectionEquality().hash(uuidEmpleado) ^
      const DeepCollectionEquality().hash(uuidEmpresa);

  @JsonKey(ignore: true)
  @override
  _$PostulacionRealizadaCopyWith<_PostulacionRealizada> get copyWith =>
      __$PostulacionRealizadaCopyWithImpl<_PostulacionRealizada>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String comentarioOfertaLaboral)
        comentarioCambiado,
    required TResult Function(Identificador uuidOfertaLaboral,
            Identificador uuidEmpleado, Identificador uuidEmpresa)
        postulacionRealizada,
  }) {
    return postulacionRealizada(uuidOfertaLaboral, uuidEmpleado, uuidEmpresa);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String comentarioOfertaLaboral)? comentarioCambiado,
    TResult Function(Identificador uuidOfertaLaboral,
            Identificador uuidEmpleado, Identificador uuidEmpresa)?
        postulacionRealizada,
    required TResult orElse(),
  }) {
    if (postulacionRealizada != null) {
      return postulacionRealizada(uuidOfertaLaboral, uuidEmpleado, uuidEmpresa);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComentarioCambiado value) comentarioCambiado,
    required TResult Function(_PostulacionRealizada value) postulacionRealizada,
  }) {
    return postulacionRealizada(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComentarioCambiado value)? comentarioCambiado,
    TResult Function(_PostulacionRealizada value)? postulacionRealizada,
    required TResult orElse(),
  }) {
    if (postulacionRealizada != null) {
      return postulacionRealizada(this);
    }
    return orElse();
  }
}

abstract class _PostulacionRealizada implements PostularOfertaLaboralEvent {
  const factory _PostulacionRealizada(
      Identificador uuidOfertaLaboral,
      Identificador uuidEmpleado,
      Identificador uuidEmpresa) = _$_PostulacionRealizada;

  Identificador get uuidOfertaLaboral => throw _privateConstructorUsedError;
  Identificador get uuidEmpleado => throw _privateConstructorUsedError;
  Identificador get uuidEmpresa => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostulacionRealizadaCopyWith<_PostulacionRealizada> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostularOfertaLaboralStateTearOff {
  const _$PostularOfertaLaboralStateTearOff();

  _PostularOfertaLaboralState call(
      {ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral,
      required bool estaPostulando,
      required Option<Either<ContratacionExcepcion, Unit>>
          postularFalloOExitoOpcion}) {
    return _PostularOfertaLaboralState(
      comentarioPostulacionOfertaLaboral: comentarioPostulacionOfertaLaboral,
      estaPostulando: estaPostulando,
      postularFalloOExitoOpcion: postularFalloOExitoOpcion,
    );
  }
}

/// @nodoc
const $PostularOfertaLaboralState = _$PostularOfertaLaboralStateTearOff();

/// @nodoc
mixin _$PostularOfertaLaboralState {
  ComentarioPostulacionOfertaLaboral? get comentarioPostulacionOfertaLaboral =>
      throw _privateConstructorUsedError;
  bool get estaPostulando => throw _privateConstructorUsedError;
  Option<Either<ContratacionExcepcion, Unit>> get postularFalloOExitoOpcion =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostularOfertaLaboralStateCopyWith<PostularOfertaLaboralState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostularOfertaLaboralStateCopyWith<$Res> {
  factory $PostularOfertaLaboralStateCopyWith(PostularOfertaLaboralState value,
          $Res Function(PostularOfertaLaboralState) then) =
      _$PostularOfertaLaboralStateCopyWithImpl<$Res>;
  $Res call(
      {ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral,
      bool estaPostulando,
      Option<Either<ContratacionExcepcion, Unit>> postularFalloOExitoOpcion});
}

/// @nodoc
class _$PostularOfertaLaboralStateCopyWithImpl<$Res>
    implements $PostularOfertaLaboralStateCopyWith<$Res> {
  _$PostularOfertaLaboralStateCopyWithImpl(this._value, this._then);

  final PostularOfertaLaboralState _value;
  // ignore: unused_field
  final $Res Function(PostularOfertaLaboralState) _then;

  @override
  $Res call({
    Object? comentarioPostulacionOfertaLaboral = freezed,
    Object? estaPostulando = freezed,
    Object? postularFalloOExitoOpcion = freezed,
  }) {
    return _then(_value.copyWith(
      comentarioPostulacionOfertaLaboral: comentarioPostulacionOfertaLaboral ==
              freezed
          ? _value.comentarioPostulacionOfertaLaboral
          : comentarioPostulacionOfertaLaboral // ignore: cast_nullable_to_non_nullable
              as ComentarioPostulacionOfertaLaboral?,
      estaPostulando: estaPostulando == freezed
          ? _value.estaPostulando
          : estaPostulando // ignore: cast_nullable_to_non_nullable
              as bool,
      postularFalloOExitoOpcion: postularFalloOExitoOpcion == freezed
          ? _value.postularFalloOExitoOpcion
          : postularFalloOExitoOpcion // ignore: cast_nullable_to_non_nullable
              as Option<Either<ContratacionExcepcion, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$PostularOfertaLaboralStateCopyWith<$Res>
    implements $PostularOfertaLaboralStateCopyWith<$Res> {
  factory _$PostularOfertaLaboralStateCopyWith(
          _PostularOfertaLaboralState value,
          $Res Function(_PostularOfertaLaboralState) then) =
      __$PostularOfertaLaboralStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral,
      bool estaPostulando,
      Option<Either<ContratacionExcepcion, Unit>> postularFalloOExitoOpcion});
}

/// @nodoc
class __$PostularOfertaLaboralStateCopyWithImpl<$Res>
    extends _$PostularOfertaLaboralStateCopyWithImpl<$Res>
    implements _$PostularOfertaLaboralStateCopyWith<$Res> {
  __$PostularOfertaLaboralStateCopyWithImpl(_PostularOfertaLaboralState _value,
      $Res Function(_PostularOfertaLaboralState) _then)
      : super(_value, (v) => _then(v as _PostularOfertaLaboralState));

  @override
  _PostularOfertaLaboralState get _value =>
      super._value as _PostularOfertaLaboralState;

  @override
  $Res call({
    Object? comentarioPostulacionOfertaLaboral = freezed,
    Object? estaPostulando = freezed,
    Object? postularFalloOExitoOpcion = freezed,
  }) {
    return _then(_PostularOfertaLaboralState(
      comentarioPostulacionOfertaLaboral: comentarioPostulacionOfertaLaboral ==
              freezed
          ? _value.comentarioPostulacionOfertaLaboral
          : comentarioPostulacionOfertaLaboral // ignore: cast_nullable_to_non_nullable
              as ComentarioPostulacionOfertaLaboral?,
      estaPostulando: estaPostulando == freezed
          ? _value.estaPostulando
          : estaPostulando // ignore: cast_nullable_to_non_nullable
              as bool,
      postularFalloOExitoOpcion: postularFalloOExitoOpcion == freezed
          ? _value.postularFalloOExitoOpcion
          : postularFalloOExitoOpcion // ignore: cast_nullable_to_non_nullable
              as Option<Either<ContratacionExcepcion, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PostularOfertaLaboralState implements _PostularOfertaLaboralState {
  const _$_PostularOfertaLaboralState(
      {this.comentarioPostulacionOfertaLaboral,
      required this.estaPostulando,
      required this.postularFalloOExitoOpcion});

  @override
  final ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral;
  @override
  final bool estaPostulando;
  @override
  final Option<Either<ContratacionExcepcion, Unit>> postularFalloOExitoOpcion;

  @override
  String toString() {
    return 'PostularOfertaLaboralState(comentarioPostulacionOfertaLaboral: $comentarioPostulacionOfertaLaboral, estaPostulando: $estaPostulando, postularFalloOExitoOpcion: $postularFalloOExitoOpcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostularOfertaLaboralState &&
            (identical(other.comentarioPostulacionOfertaLaboral,
                    comentarioPostulacionOfertaLaboral) ||
                const DeepCollectionEquality().equals(
                    other.comentarioPostulacionOfertaLaboral,
                    comentarioPostulacionOfertaLaboral)) &&
            (identical(other.estaPostulando, estaPostulando) ||
                const DeepCollectionEquality()
                    .equals(other.estaPostulando, estaPostulando)) &&
            (identical(other.postularFalloOExitoOpcion,
                    postularFalloOExitoOpcion) ||
                const DeepCollectionEquality().equals(
                    other.postularFalloOExitoOpcion,
                    postularFalloOExitoOpcion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comentarioPostulacionOfertaLaboral) ^
      const DeepCollectionEquality().hash(estaPostulando) ^
      const DeepCollectionEquality().hash(postularFalloOExitoOpcion);

  @JsonKey(ignore: true)
  @override
  _$PostularOfertaLaboralStateCopyWith<_PostularOfertaLaboralState>
      get copyWith => __$PostularOfertaLaboralStateCopyWithImpl<
          _PostularOfertaLaboralState>(this, _$identity);
}

abstract class _PostularOfertaLaboralState
    implements PostularOfertaLaboralState {
  const factory _PostularOfertaLaboralState(
      {ComentarioPostulacionOfertaLaboral? comentarioPostulacionOfertaLaboral,
      required bool estaPostulando,
      required Option<Either<ContratacionExcepcion, Unit>>
          postularFalloOExitoOpcion}) = _$_PostularOfertaLaboralState;

  @override
  ComentarioPostulacionOfertaLaboral? get comentarioPostulacionOfertaLaboral =>
      throw _privateConstructorUsedError;
  @override
  bool get estaPostulando => throw _privateConstructorUsedError;
  @override
  Option<Either<ContratacionExcepcion, Unit>> get postularFalloOExitoOpcion =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostularOfertaLaboralStateCopyWith<_PostularOfertaLaboralState>
      get copyWith => throw _privateConstructorUsedError;
}
