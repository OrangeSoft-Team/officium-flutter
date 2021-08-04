// import 'package:auto_route/annotations.dart';
// import 'package:officium_flutter/presentacion/comun/homepage.dart';
// import 'package:officium_flutter/presentacion/iniciar_sesion/inicio_sesion.dart';
// import 'package:officium_flutter/presentacion/ofertas_laborales/ver_detalle_oferta/detalle_oferta_laboral.dart';
// import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/ver_lista_ofertas.dart';
// import 'package:officium_flutter/presentacion/splash/vista_splash.dart';

// @MaterialAutoRouter(
//   routes: <AutoRoute>[
//     MaterialRoute(page: VistaSplash, initial: true),
//     MaterialRoute(page: InicioSesionVista),
//     MaterialRoute(page: VerListaOfertas),
//     MaterialRoute(page: DetalleOferta),
//     MaterialRoute(page: HomePage),
//   ],
// )
// class $Router {}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart';
import 'package:officium_flutter/inyeccion.dart';
import 'package:officium_flutter/presentacion/comun/home_page.dart';
import 'package:officium_flutter/presentacion/entrevista/ver_detalle_entrevista/ver_detalle_entrevista_page.dart';
import 'package:officium_flutter/presentacion/entrevista/ver_lista_entrevistas/ver_lista_entrevistas_page.dart';
import 'package:officium_flutter/presentacion/iniciar_sesion/inicio_sesion_page.dart';
import 'package:officium_flutter/presentacion/mooc/curso/ver_detalle_curso/ver_detalle_curso_page.dart';
import 'package:officium_flutter/presentacion/mooc/curso/ver_listado_cursos/ver_listado_cursos_page.dart';
import 'package:officium_flutter/presentacion/mooc/leccion/consiltar_leccion_page.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_detalle_oferta/detalle_oferta_laboral_page.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/ver_lista_ofertas_page.dart';
import 'package:officium_flutter/presentacion/postulacion/consultar_postulaciones/consultar_postulaciones_page.dart';
import 'package:officium_flutter/presentacion/postulacion/postular_oferta_laboral/postulacion_page.dart';
import 'package:officium_flutter/presentacion/registro/registro_page.dart';
import 'package:officium_flutter/presentacion/trabajo/ver_todos_los_trabajos_empleado/ver_todos_los_trabajos_page.dart';

Map<String, WidgetBuilder> getRutasAplicacion() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => InicioSesionVistaPage(),
    'ver_ofertas_laborales': (BuildContext context) => BlocProvider(
        create: (context) => getIt<EstadoAutentificacionBloc>()
          ..add(
            const EstadoAutentificacionEvent
                .verificacionDeAutenticacionSolicitada(),
          ),
        child: VerListaOfertasPage()),
    'ver_detalle_ofertas_laborales': (BuildContext context) =>
        DetalleOfertaPage(),
    'home': (BuildContext context) => BlocProvider(
        create: (context) => getIt<EstadoAutentificacionBloc>()
          ..add(
            const EstadoAutentificacionEvent
                .verificacionDeAutenticacionSolicitada(),
          ),
        child: HomePage()),
    'consultar_postulaciones': (BuildContext context) => BlocProvider(
          create: (context) => getIt<EstadoAutentificacionBloc>()
            ..add(
              const EstadoAutentificacionEvent
                  .verificacionDeAutenticacionSolicitada(),
            ),
          child: VerListaPostulacionesPage(),
        ),
    'postular': (BuildContext context) => PostularPage(),
    'registro': (BuildContext context) => RegistroPage(),
    'consultar_entrevistas': (BuildContext context) => BlocProvider(
          create: (context) => getIt<EstadoAutentificacionBloc>()
            ..add(
              const EstadoAutentificacionEvent
                  .verificacionDeAutenticacionSolicitada(),
            ),
          child: VerListaEntrevistasPage(),
        ),
    'ver_detalle_entrevista': (BuildContext context) => DetalleEntrevista(),
    'consultar_trabajo': (BuildContext context) => BlocProvider(
          create: (context) => getIt<EstadoAutentificacionBloc>()
            ..add(
              const EstadoAutentificacionEvent
                  .verificacionDeAutenticacionSolicitada(),
            ),
          child: VerListaTrabajos(),
        ),
    'mooc': (BuildContext context) => BlocProvider(
          create: (context) => getIt<EstadoAutentificacionBloc>()
            ..add(
              const EstadoAutentificacionEvent
                  .verificacionDeAutenticacionSolicitada(),
            ),
          child: VerListaCursos(),
        ),
    'mooc/curso': (BuildContext context) => VerDetalleCurso(),
    'mooc/curso/leccion': (BuildContext context) => ConsultarLeccionPage(),
  };
}
