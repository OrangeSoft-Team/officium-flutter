import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/registro/registro_bloc.dart';

class FormularioRegistro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegistroBloc, RegistroState>(
      listener: (context, state) {
        state.opcionDeErrorOExitoDeRegistro.fold(
          () {},
          (either) => either.fold(
            (failure) {
              final snackBar = SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text(
                  failure.map(
                      canceladoPorUsuario: (_) => 'Cancelado',
                      serverError: (_) => 'Error de servidor',
                      emailEnUso: (_) => 'Email en uso',
                      emailYPasswordInvalidas: (_) =>
                          'Combinacion de email y password invalida',
                      cuentaExistente: (_) =>
                          'Ya existe una cuenta asociada al email'),
                ),
                action: SnackBarAction(
                  label: 'Action',
                  onPressed: () {},
                ),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            (_) {
              Navigator.of(context).pushReplacementNamed('home');
              context.read<EstadoAutentificacionBloc>().add(
                  const EstadoAutentificacionEvent
                      .verificacionDeAutenticacionSolicitada());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.mostrarMensajesError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
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
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context.read<IniciarSesionBloc>().add(
                      IniciarSesionEvent.emailCambiado(value),
                    ),
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
                        contrasenaLarga: (_) => 'La contraseña es muy larga.',
                        contrasenaVacia: (_) => 'La contraseña está vacia.',
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
              TextButton(
                onPressed: () => Navigator.pushNamed(context, 'home'),
                child: const Text('Saltar Login'),
              ),
            ],
          ),
        );
      },
    );
  }
}
