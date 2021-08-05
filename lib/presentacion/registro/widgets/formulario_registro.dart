import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:officium_flutter/aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/registro/registro_bloc.dart';

class FormularioRegistro extends StatefulWidget {
  @override
  State<FormularioRegistro> createState() => _FormularioRegistroState();
}

class _FormularioRegistroState extends State<FormularioRegistro> {
  String _generoSeleccionado = 'masculino';
  String _nivelEducativoSeleccionado = 'ninguno';
  final TextEditingController _inputFieldDateController =
      TextEditingController();
  DateTime _fecha = DateTime.now();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  ScrollController scrollController = ScrollController();

  final List<String> _generos = ['masculino', 'femenino', 'otro'];
  final List<String> _nivelEducativo = [
    'ninguno',
    'primaria',
    'secundaria',
    'tecnico',
    'pregrado',
    'postgrado',
    'doctorado',
    'master'
  ];
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
                  label: 'Olvidar',
                  onPressed: () {},
                ),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            (_) {
              // Navigator.of(context).pushReplacementNamed('home');
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
            controller: scrollController,
            padding: const EdgeInsets.all(8),
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              _emailCampo(context),
              const Divider(),
              _passwordCampo(context),
              const Divider(),
              _confirmPassCampo(context),
              const Divider(),
              _primerNombreCampo(context),
              const Divider(),
              _segundoNombreCampo(context),
              const Divider(),
              _primerApellidoCampo(context),
              const Divider(),
              _segundoApellidoCampo(context),
              const Divider(),
              _generoCampo(context),
              const Divider(),
              _nivelEducativoCampo(context),
              const Divider(),
              _direccionCampo(context),
              const Divider(),
              _numeroCampo(context),
              const Divider(),
              _fechaNacimientoCampo(context),
              const Divider(),
              _codigoPostalCampo(context),
              const Divider(),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.all(5),
                    child: OutlinedButton(
                      onPressed: () {
                        context.read<RegistroBloc>().add(const RegistroEvent
                            .registrarConDatosBasicosPresionado());
                        if (!state.mostrarMensajesError) {
                          scrollController.jumpTo(0.0);
                          Navigator.of(context).pushReplacementNamed("/");
                        }
                      },
                      child: const Text('Registrarse'),
                    ),
                  )),
                ],
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, 'home'),
                child: const Text('Saltar Login'),
              ),
            ],
          ),
        );
      },
    );
  }

  TextFormField _passwordCampo(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.lock),
        labelText: 'Contraseña',
      ),
      autocorrect: false,
      obscureText: true,
      controller: _pass,
      onChanged: (value) => context
          .read<RegistroBloc>()
          .add(RegistroEvent.passwordCambiado(value)),
      validator: (value) =>
          context.read<RegistroBloc>().state.password.value.fold(
                (f) => f.maybeMap(
                    contrasenaCorta: (_) => 'La contraseña es muy corta.',
                    contrasenaLarga: (_) => 'La contraseña es muy larga.',
                    contrasenaVacia: (_) => 'La contraseña está vacia.',
                    contrasenaSinCaracterEspecial: (_) =>
                        'La contraseña debe tener un caracter especial',
                    contrasenaSinMayuscula: (_) =>
                        'La contraseña debe tener un caracter especial',
                    contrasenaSinMinuscula: (_) =>
                        'La contraseña debe tener un caracter especial',
                    contrasenaSinNumero: (_) =>
                        'La contraseña debe tener un caracter especial',
                    orElse: () => null),
                (r) => null,
              ),
    );
  }

  TextFormField _confirmPassCampo(BuildContext context) {
    return TextFormField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.lock),
          labelText: 'Confirmar Contraseña',
        ),
        autocorrect: false,
        obscureText: true,
        controller: _confirmPass,
        validator: (val) {
          if (val!.isEmpty) {
            return 'Campo vacio';
          }
          if (val != _pass.text) {
            return 'Las contraseñas no coindicen';
          }
        });
  }

  TextFormField _emailCampo(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: 'Email',
      ),
      autocorrect: false,
      onChanged: (value) => context.read<RegistroBloc>().add(
            RegistroEvent.emailCambiado(value),
          ),
      validator: (_) =>
          context.read<RegistroBloc>().state.emailAddress.value.fold(
                (f) => f.maybeMap(
                  stringVacio: (_) => 'El email es obligatorio',
                  emailInvalido: (_) => 'Email invalido',
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }

  Widget _primerNombreCampo(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.accessibility),
        labelText: 'Primer Nombre',
      ),
      autocorrect: false,
      onChanged: (value) => context.read<RegistroBloc>().add(
            RegistroEvent.primerNombreCambiado(value),
          ),
      validator: (_) =>
          context.read<RegistroBloc>().state.empleado.primerNombre.value.fold(
                (f) => f.maybeMap(
                  stringVacio: (_) => 'El primer nombre es obligatoria',
                  longitudInvalida: (_) => 'Longitud Invalida',
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }

  TextFormField _segundoNombreCampo(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.accessibility),
        labelText: 'Segundo Nombre',
      ),
      autocorrect: false,
      onChanged: (value) => context.read<RegistroBloc>().add(
            RegistroEvent.segundoNombreCambiado(value),
          ),
      validator: (_) =>
          context.read<RegistroBloc>().state.empleado.segundoNombre!.value.fold(
                (f) => f.maybeMap(
                  longitudInvalida: (_) => 'Longitud Invalida',
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }

  TextFormField _primerApellidoCampo(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.accessibility),
        labelText: 'Primer Apellido',
      ),
      autocorrect: false,
      onChanged: (value) => context.read<RegistroBloc>().add(
            RegistroEvent.primerApellidoCambiado(value),
          ),
      validator: (_) =>
          context.read<RegistroBloc>().state.empleado.primerApellido.value.fold(
                (f) => f.maybeMap(
                  stringVacio: (_) => 'El primer apellido es obligatorio',
                  longitudInvalida: (_) => 'Longitud Invalida',
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }

  TextFormField _segundoApellidoCampo(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.accessibility),
        labelText: 'Segundo Apellido',
      ),
      autocorrect: false,
      onChanged: (value) => context.read<RegistroBloc>().add(
            RegistroEvent.segundoApellidoCambiado(value),
          ),
      validator: (_) => context
          .read<RegistroBloc>()
          .state
          .empleado
          .segundoApellido!
          .value
          .fold(
            (f) => f.maybeMap(
              longitudInvalida: (_) => 'Longitud Invalida',
              orElse: () => null,
            ),
            (_) => null,
          ),
    );
  }

  Widget _generoCampo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Seleccione genero',
          style:
              TextStyle(fontSize: 16, color: Theme.of(context).iconTheme.color),
        ),
        const SizedBox(width: 10),
        Icon(_generoSeleccionado == 'masculino' ? Icons.male : Icons.female),
        // SizedBox(width: 30.0),
        DropdownButton(
          items: _getOpcionesDropdown(_generos),
          value: _generoSeleccionado,
          onChanged: (opt) {
            context
                .read<RegistroBloc>()
                .add(RegistroEvent.generoCambiado(opt as String));
            setState(() {
              _generoSeleccionado = opt;
            });
          },
        )
      ],
    );
  }

  Widget _nivelEducativoCampo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Seleccione su nivel educativo',
          style:
              TextStyle(fontSize: 16, color: Theme.of(context).iconTheme.color),
        ),
        const SizedBox(width: 10),
        // SizedBox(width: 30.0),
        DropdownButton(
          items: _getOpcionesDropdown(_nivelEducativo),
          value: _nivelEducativoSeleccionado,
          onChanged: (opt) {
            context.read<RegistroBloc>().add(
                RegistroEvent.nivelEducativoCambiado(
                    (opt as String).toUpperCase()));
            setState(() {
              _nivelEducativoSeleccionado = opt;
            });
          },
        )
      ],
    );
  }

  List<DropdownMenuItem<String>> _getOpcionesDropdown(List<String> opciones) {
    final List<DropdownMenuItem<String>> lista = [];
    for (final opcion in opciones) {
      lista.add(DropdownMenuItem(
        value: opcion.toLowerCase(),
        child: Text(opcion.toUpperCase()),
      ));
    }

    return lista;
  }

  TextFormField _direccionCampo(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.apartment),
        labelText: 'Direccion Calle',
      ),
      autocorrect: false,
      onChanged: (value) => context.read<RegistroBloc>().add(
            RegistroEvent.direccionCalleCambiado(value),
          ),
      validator: (_) => context
          .read<RegistroBloc>()
          .state
          .empleado
          .direccionCalleUno
          .value
          .fold(
            (f) => f.maybeMap(
              stringVacio: (_) => 'La direccion es obligatoria',
              longitudInvalida: (_) => 'Longitud invalida',
              emailInvalido: (_) => 'Email invalido',
              orElse: () => null,
            ),
            (_) => null,
          ),
    );
  }

  TextFormField _numeroCampo(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.phone),
        labelText: 'Teléfono de Contacto',
      ),
      autocorrect: false,
      onChanged: (value) => context.read<RegistroBloc>().add(
            RegistroEvent.telefonoCambiado(value),
          ),
      validator: (_) => context
          .read<RegistroBloc>()
          .state
          .empleado
          .numeroTelefonico
          .value
          .fold(
            (f) => f.maybeMap(
              numeroTelefonicoInvalido: (_) =>
                  'El número telefónico es inválido',
              numeroTelefonicoVacio: (_) =>
                  'El número telefónico es obligatorio',
              orElse: () => null,
            ),
            (_) => null,
          ),
    );
  }

  _seleccionarFecha(BuildContext context) async {
    final DateTime? seleccionada = await showDatePicker(
        context: context,
        initialDate: _fecha,
        firstDate: DateTime(1900),
        lastDate: DateTime.now());

    if (seleccionada != null) {
      setState(() {
        final String formattedDate =
            DateFormat('dd-MM-yyyy').format(seleccionada);
        _fecha = seleccionada;
        _inputFieldDateController.text = formattedDate.toString();
        context.read<RegistroBloc>().add(
              RegistroEvent.fechaNacimientoCambiado(
                  DateTime.parse(_fecha.toString())),
            );
      });
    }
  }

  Widget _fechaNacimientoCampo(BuildContext context) {
    return TextFormField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      validator: (_) => context
          .read<RegistroBloc>()
          .state
          .empleado
          .fechaNacimiento
          .value
          .fold(
            (f) => f.maybeMap(
              fechaNacimientoMenorEdad: (_) =>
                  'Fecha nacimiento es menor de edad',
              fechaNula: (_) => 'La fecha de nacimiento es obligatoria',
              orElse: () => null,
            ),
            (_) => null,
          ),
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Fecha de nacimiento',
          labelText: 'Fecha de nacimiento',
          prefixIcon: const Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _seleccionarFecha(context);
      },
    );
  }

  TextFormField _codigoPostalCampo(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.person),
        labelText: 'Código Postal',
      ),
      autocorrect: false,
      onChanged: (value) => context.read<RegistroBloc>().add(
            RegistroEvent.codigoPostalCambiado(value),
          ),
      validator: (_) =>
          context.read<RegistroBloc>().state.empleado.codigoPostal.value.fold(
                (f) => f.maybeMap(
                  stringVacio: (_) => 'El código postal es obligatorio',
                  longitudInvalida: (_) => 'Código Postal es inválido',
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }

  @override
  void dispose() {
    _inputFieldDateController.clear();
    _pass.clear();
    _confirmPass.clear();
    super.dispose();
  }
}
