import 'package:officium_flutter/infraestructura/comun/modelos/habilidad_dto.dart';

abstract class IComunHabilidadFuente {
  //OBTIENE HABILIDADES GENERALES REGISTRADAS
  Future<List<HabilidadDTO>> obtenerHabilidades();
}