import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart';
import 'package:officium_flutter/aplicacion/oferta_laboral/ver_ofertas_laborales/ver_ofertas_laborales_bloc.dart';
import 'package:officium_flutter/inyeccion.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/widgets/lista_ofertas.dart';

class VerListaOfertasPage extends StatelessWidget {
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
                noautenticado: (_) => Navigator.pushNamed(context, '/'),
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Lista de ofertas'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <IconButton>[
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                },
              ),
            ],
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
