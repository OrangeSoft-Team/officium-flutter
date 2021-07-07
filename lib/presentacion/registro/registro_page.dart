import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/registro/registro_bloc.dart';
import 'package:officium_flutter/inyeccion.dart';
import 'package:officium_flutter/presentacion/registro/widgets/formulario_registro.dart';

class RegistroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Formulario de Registro'),
          shadowColor: Colors.white,
        ),
        body: BlocProvider(
          create: (context) => getIt<RegistroBloc>(),
          child: FormularioRegistro(),
        ));
  }
}
