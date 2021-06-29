// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'empresa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmpresaTearOff {
  const _$EmpresaTearOff();

  _Empresa call(
      {required Identificador uuid,
      required NombreEmpresa nombreEmpresa,
      required DireccionCalle direccionCalle,
      required CodigoPostal codigoPostal}) {
    return _Empresa(
      uuid: uuid,
      nombreEmpresa: nombreEmpresa,
      direccionCalle: direccionCalle,
      codigoPostal: codigoPostal,
    );
  }
}

/// @nodoc
const $Empresa = _$EmpresaTearOff();

/// @nodoc
mixin _$Empresa {
  Identificador get uuid => throw _privateConstructorUsedError;
  NombreEmpresa get nombreEmpresa => throw _privateConstructorUsedError;
  DireccionCalle get direccionCalle => throw _privateConstructorUsedError;
  CodigoPostal get codigoPostal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmpresaCopyWith<Empresa> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmpresaCopyWith<$Res> {
  factory $EmpresaCopyWith(Empresa value, $Res Function(Empresa) then) =
      _$EmpresaCopyWithImpl<$Res>;
  $Res call(
      {Identificador uuid,
      NombreEmpresa nombreEmpresa,
      DireccionCalle direccionCalle,
      CodigoPostal codigoPostal});
}

/// @nodoc
class _$EmpresaCopyWithImpl<$Res> implements $EmpresaCopyWith<$Res> {
  _$EmpresaCopyWithImpl(this._value, this._then);

  final Empresa _value;
  // ignore: unused_field
  final $Res Function(Empresa) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? nombreEmpresa = freezed,
    Object? direccionCalle = freezed,
    Object? codigoPostal = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      nombreEmpresa: nombreEmpresa == freezed
          ? _value.nombreEmpresa
          : nombreEmpresa // ignore: cast_nullable_to_non_nullable
              as NombreEmpresa,
      direccionCalle: direccionCalle == freezed
          ? _value.direccionCalle
          : direccionCalle // ignore: cast_nullable_to_non_nullable
              as DireccionCalle,
      codigoPostal: codigoPostal == freezed
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as CodigoPostal,
    ));
  }
}

/// @nodoc
abstract class _$EmpresaCopyWith<$Res> implements $EmpresaCopyWith<$Res> {
  factory _$EmpresaCopyWith(_Empresa value, $Res Function(_Empresa) then) =
      __$EmpresaCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identificador uuid,
      NombreEmpresa nombreEmpresa,
      DireccionCalle direccionCalle,
      CodigoPostal codigoPostal});
}

/// @nodoc
class __$EmpresaCopyWithImpl<$Res> extends _$EmpresaCopyWithImpl<$Res>
    implements _$EmpresaCopyWith<$Res> {
  __$EmpresaCopyWithImpl(_Empresa _value, $Res Function(_Empresa) _then)
      : super(_value, (v) => _then(v as _Empresa));

  @override
  _Empresa get _value => super._value as _Empresa;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? nombreEmpresa = freezed,
    Object? direccionCalle = freezed,
    Object? codigoPostal = freezed,
  }) {
    return _then(_Empresa(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as Identificador,
      nombreEmpresa: nombreEmpresa == freezed
          ? _value.nombreEmpresa
          : nombreEmpresa // ignore: cast_nullable_to_non_nullable
              as NombreEmpresa,
      direccionCalle: direccionCalle == freezed
          ? _value.direccionCalle
          : direccionCalle // ignore: cast_nullable_to_non_nullable
              as DireccionCalle,
      codigoPostal: codigoPostal == freezed
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as CodigoPostal,
    ));
  }
}

/// @nodoc

@Implements(IEntitidad)
class _$_Empresa implements _Empresa {
  const _$_Empresa(
      {required this.uuid,
      required this.nombreEmpresa,
      required this.direccionCalle,
      required this.codigoPostal});

  @override
  final Identificador uuid;
  @override
  final NombreEmpresa nombreEmpresa;
  @override
  final DireccionCalle direccionCalle;
  @override
  final CodigoPostal codigoPostal;

  @override
  String toString() {
    return 'Empresa(uuid: $uuid, nombreEmpresa: $nombreEmpresa, direccionCalle: $direccionCalle, codigoPostal: $codigoPostal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empresa &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.nombreEmpresa, nombreEmpresa) ||
                const DeepCollectionEquality()
                    .equals(other.nombreEmpresa, nombreEmpresa)) &&
            (identical(other.direccionCalle, direccionCalle) ||
                const DeepCollectionEquality()
                    .equals(other.direccionCalle, direccionCalle)) &&
            (identical(other.codigoPostal, codigoPostal) ||
                const DeepCollectionEquality()
                    .equals(other.codigoPostal, codigoPostal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(nombreEmpresa) ^
      const DeepCollectionEquality().hash(direccionCalle) ^
      const DeepCollectionEquality().hash(codigoPostal);

  @JsonKey(ignore: true)
  @override
  _$EmpresaCopyWith<_Empresa> get copyWith =>
      __$EmpresaCopyWithImpl<_Empresa>(this, _$identity);
}

abstract class _Empresa implements Empresa, IEntitidad {
  const factory _Empresa(
      {required Identificador uuid,
      required NombreEmpresa nombreEmpresa,
      required DireccionCalle direccionCalle,
      required CodigoPostal codigoPostal}) = _$_Empresa;

  @override
  Identificador get uuid => throw _privateConstructorUsedError;
  @override
  NombreEmpresa get nombreEmpresa => throw _privateConstructorUsedError;
  @override
  DireccionCalle get direccionCalle => throw _privateConstructorUsedError;
  @override
  CodigoPostal get codigoPostal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmpresaCopyWith<_Empresa> get copyWith =>
      throw _privateConstructorUsedError;
}
