import 'entidad.dart';
import 'ciudad.dart';
import 'value_objects/identificador.dart';
import 'value_objects/nombre_ciudad.dart';

class Estado extends IEntitidad {
  Identificador uuid;
  NombreCiudad nombre;
  List<Ciudad> ciudades;

  Estado({
    required this.uuid,
    required this.nombre,
    required this.ciudades,
  });

  @override
  Identificador get id => uuid;
}
