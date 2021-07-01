import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/registro/registro_bloc.dart';

class FormularioInicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IniciarSesionBloc, IniciarSesionState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          autovalidateMode: state.mostrarMensajesDeError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 0,
              ),
              const Image(
                image: AssetImage("assets/img/officium_logo.png"),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email), labelText: 'Email'),
                autocorrect: false,
                onChanged: (value) => context
                    .read<IniciarSesionBloc>()
                    .add(IniciarSesionEvent.emailCambiado(value)),
                validator: (_) =>
                    context.read<IniciarSesionBloc>().state.email.value.fold(
                          (f) => f.maybeMap(
                            emailInvalido: (_) => 'Email invalido',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Contraseña',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context
                    .read<IniciarSesionBloc>()
                    .add(IniciarSesionEvent.passwordCambiado(value)),
                validator: (value) => context
                    .read<IniciarSesionBloc>()
                    .state
                    .password
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        contrasenaCorta: (_) => 'La contraseña es muy corta.',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: OutlinedButton(
                        onPressed: () {
                          context.read<IniciarSesionBloc>().add(
                              const IniciarSesionEvent
                                  .loginCorreoYClavePresionado());
                        },
                        child: const Text('Iniciar Sesion'),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.all(5),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Registrarse'),
                    ),
                  )),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
