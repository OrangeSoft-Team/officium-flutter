import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart';
import 'package:officium_flutter/inyeccion.dart';
import 'package:officium_flutter/presentacion/iniciar_sesion/widgets/formulario_inicio_sesion.dart';

const double topMargin = 160.0;

class InicioSesionVistaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Inicia Sesion'),
          shadowColor: Colors.white,
        ),
        body: BlocProvider(
          create: (context) => getIt<IniciarSesionBloc>(),
          child: FormularioInicioSesion(),
        ));
  }
}
