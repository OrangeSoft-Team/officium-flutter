import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart';
import 'package:officium_flutter/presentacion/routes/router.gr.dart';

class VistaSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<EstadoAutentificacionBloc, EstadoAutentificacionState>(
      listener: (context, state) {
        state.map(
          inicial: (_) => print('Hello Init'),
          autenticado: (_) =>
              AutoRouter.of(context).replace(const VerListaOfertasRoute()),
          noautenticado: (_) =>
              AutoRouter.of(context).replace(const InicioSesionVistaRoute()),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
