import 'package:officium_flutter/infraestructura/comun/modelos/ciudad_dto.dart';
import 'package:officium_flutter/infraestructura/comun/modelos/estado_dto.dart';
import 'package:officium_flutter/infraestructura/comun/modelos/pais_dto.dart';

abstract class IComunLocacionFuente {
  //OBTIENE PAISES REGISTRADOS
  Future<List<PaisDTO>> obtenerPaises();
  //OBTIENE ESTADOS REGISTRADOS PERTENECIENTES A UN PAIS
  Future<List<EstadoDTO>> obtenerEstados(String uuidPais);
  //OBTIENE CIUDADES REGISTRADAS PERTENECIENTES A UN ESTADO
  Future<List<CiudadDTO>> obtenerCiudades(String uuidPais, String uuidEstado);
}