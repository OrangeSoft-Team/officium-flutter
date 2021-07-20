import 'package:flutter/material.dart';
import 'package:officium_flutter/aplicacion/autentificacion/iniciar_sesion/iniciar_sesion_bloc.dart';
import 'package:provider/src/provider.dart';

class PasswordWidget extends StatefulWidget {
  final TextEditingController controller;
  const PasswordWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool _mostrarPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock),
          labelText: 'Contraseña',
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _mostrarPassword = !_mostrarPassword;
              });
            },
            child: Icon(
                _mostrarPassword ? Icons.visibility : Icons.visibility_off),
          )),
      autocorrect: false,
      obscureText: !_mostrarPassword,
      onChanged: (value) => context
          .read<IniciarSesionBloc>()
          .add(IniciarSesionEvent.passwordCambiado(value)),
      validator: (value) =>
          context.read<IniciarSesionBloc>().state.password.value.fold(
                (f) => f.maybeMap(
                  contrasenaCorta: (_) => 'La contraseña es muy corta.',
                  contrasenaLarga: (_) => 'La contraseña es muy larga.',
                  contrasenaVacia: (_) => 'La contraseña está vacia.',
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }
}
