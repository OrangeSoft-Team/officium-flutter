import 'package:auto_route/annotations.dart';
import 'package:officium_flutter/presentacion/iniciar_sesion/inicio_sesion.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_detalle_oferta/detalle_oferta_laboral.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_detalle_oferta/postulacion.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/ver_lista_ofertas.dart';
import 'package:officium_flutter/presentacion/splash/vista_splash.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: VistaSplash, initial: true),
    MaterialRoute(page: InicioSesionVista),
    MaterialRoute(page: VerListaOfertas),
    MaterialRoute(page: DetalleOferta),
    MaterialRoute(page: Postular),
  ],
)
class $Router {}
