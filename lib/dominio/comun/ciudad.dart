import 'entidad.dart';
import 'value_objects/identificador.dart';
import 'value_objects/nombre_ciudad.dart';

class Ciudad extends IEntitidad {
  Identificador uuid;
  NombreCiudad nombre;

  Ciudad({
    required this.uuid,
    required this.nombre,
  });

  @override
  Identificador get id => uuid;
}
