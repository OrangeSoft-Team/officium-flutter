import 'package:dartz/dartz.dart';
import 'package:officium_flutter/dominio/comun/factoriaValorErroneo.dart';
import 'package:officium_flutter/dominio/comun/validable.dart';
import 'package:officium_flutter/dominio/comun/value_object.dart';


class Fecha extends ValueObject<DateTime> implements IValidable{
      @override
      final Either<ValorErroneo<DateTime>, DateTime> valor;

      factory Fecha(DateTime fecha){
        return Fecha._(right(fecha));
      }

      const Fecha._(this.valor)

}  