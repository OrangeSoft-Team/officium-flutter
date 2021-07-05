import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart';

class VistaSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<EstadoAutentificacionBloc, EstadoAutentificacionState>(
      listener: (context, state) {
        state.map(
            inicial: (_) => print('Hello Init'),
            autenticado: (_) =>
                Navigator.of(context).pushReplacementNamed("home"),
            noautenticado: (_) =>
                Navigator.of(context).pushReplacementNamed("/"));
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
