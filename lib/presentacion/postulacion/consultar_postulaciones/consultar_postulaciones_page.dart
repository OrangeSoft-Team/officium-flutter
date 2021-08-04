import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart';
import 'package:officium_flutter/aplicacion/contratacion/postulacion/ver_todas_postulaciones_oferta_laboral/ver_todas_postulaciones_oferta_laboral_bloc.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/inyeccion.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/widgets/lista_ofertas.dart';

class VerListaPostulacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<VerTodasPostulacionesOfertaLaboralBloc>()
              ..add(VerTodasPostulacionesOfertaLaboralEvent
                  .verTodasLasPostulacionesEmpezado(Identificador())))
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<EstadoAutentificacionBloc, EstadoAutentificacionState>(
            listener: (context, state) {
              state.maybeMap(
                noautenticado: (_) => Navigator.pushNamed(context, '/'),
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Panel de Postulaciones'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: ListaOfertas(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
