import 'entidad.dart';
import 'estado.dart';
import 'value_objects/identificador.dart';
import 'value_objects/nombre_ciudad.dart';

class Pais extends IEntitidad {
  Identificador uuid;
  NombreCiudad nombre;
  List<Estado> ciudades;

  Pais({
    required this.uuid,
    required this.nombre,
    required this.ciudades,
  });

  @override
  Identificador get id => uuid;
}
