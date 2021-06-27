import 'entidad.dart';
import 'value_objects/identificador.dart';
import 'ciudad.dart';
import 'pais.dart';
import 'estado.dart';

//FALTA!!

class Direccion extends IEntitidad {
  Identificador uuid;

  Direccion({
    required this.uuid,
  });

  @override
  Identificador get id => uuid;
}
