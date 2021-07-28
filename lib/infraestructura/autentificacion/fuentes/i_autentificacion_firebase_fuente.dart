import 'package:dartz/dartz.dart';
import 'package:officium_flutter/infraestructura/autentificacion/modelos/respuesta_inicio_sesion_empelado_dto.dart';

abstract class IAuthFirebaseFuente {
  /*Future<Unit> registrarUsuario();
  Future<Unit> registrarUsuarioConGoogle();*/
  //INICIA SESION TRADICIONAL TIPO CORREO Y CLAVE
  Future<RespuestaInicioSesionEmpleadoDTO> ingresarConCorreoClave(String email,String password);
  //INICIA SESION CON GOOGLE LOGGIN COMO INTERMEDIARIO
  Future<RespuestaInicioSesionEmpleadoDTO> ingresarConGoogle();
  //CIERRA SESION DEL USUARIO ACTUAL DE LA APP
  Future<Unit> cerrarSesion();
}