import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:officium_flutter/aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/oferta_laboral/ver_ofertas_laborales/ver_ofertas_laborales_bloc.dart';
import 'package:officium_flutter/inyeccion.dart';
import 'package:officium_flutter/presentacion/routes/router.gr.dart';

class VerListaOfertas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<VerOfertasLaboralesBloc>()
              ..add(const VerOfertasLaboralesEvent
                  .verTodasLasOfertasLaboralesEmpezado()))
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<EstadoAutentificacionBloc, EstadoAutentificacionState>(
            listener: (context, state) {
              state.maybeMap(
                noautenticado: (_) => AutoRouter.of(context)
                    .replace(const InicioSesionVistaRoute()),
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Lista de ofertas'),
            leading: IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context
                    .read<EstadoAutentificacionBloc>()
                    .add(const EstadoAutentificacionEvent.cerrarSesion());
              },
            ),
            actions: <IconButton>[
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {},
              ),
            ],
          ),
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
