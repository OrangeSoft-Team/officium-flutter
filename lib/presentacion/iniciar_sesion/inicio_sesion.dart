import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart';
import 'package:officium_flutter/presentacion/comun/app_widget.dart';
import 'package:officium_flutter/presentacion/iniciar_sesion/widgets/formulario_inicio_sesion.dart';

import '../../inyeccion.dart';

class InicioSesionVista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Officium Login'),
      //   shadowColor: Colors.white,
      // ),
      body: Container(
        //Esto tiene hardcodeado el margen del top :( pero me canse
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 160.0),
        child: BlocProvider(
          create: (context) => getIt<IniciarSesionBloc>(),
          child: FormularioInicioSesion(),
        ),
      ),
    );
  }
}
