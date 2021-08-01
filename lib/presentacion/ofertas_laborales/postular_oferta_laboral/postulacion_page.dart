import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart';
import 'package:officium_flutter/aplicacion/contratacion/postulacion/postular_oferta_laboral/postular_oferta_laboral_bloc.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/inyeccion.dart';

class PostularPage extends StatefulWidget {
  @override
  State<PostularPage> createState() => _PostularPageState();
}

class _PostularPageState extends State<PostularPage> {
  bool comentario = false;
  TextEditingController comentarioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final OfertaLaboral oferta =
        ModalRoute.of(context)?.settings.arguments as OfertaLaboral;
    return BlocProvider(
      create: (context) => getIt<PostularOfertaLaboralBloc>(),
      child:
          BlocConsumer<PostularOfertaLaboralBloc, PostularOfertaLaboralState>(
              builder: (context, state) {
        return _postulacionBody(context, oferta);
      }, listener: (context, state) {
        state.postularFalloOExitoOpcion.fold(
            () {},
            (either) => either.fold(
                  (_) {},
                  (_) {
                    Navigator.of(context)
                        .pushReplacementNamed('ver_ofertas_laborales');

                    context.read<EstadoAutentificacionBloc>().add(
                        const EstadoAutentificacionEvent
                            .verificacionDeAutenticacionSolicitada());
                  },
                ));
      }),
    );
  }

  Scaffold _postulacionBody(BuildContext context, OfertaLaboral oferta) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Postulacion'),
      ),
      body: Column(
        children: [
          CheckboxListTile(
              value: comentario,
              title: const Text("¿Desea agregar un comentario?"),
              onChanged: (comentarioActualizado) {
                setState(() {
                  comentario = comentarioActualizado!;
                  comentarioController.clear();
                });
              }),
          const SizedBox(
            height: 10,
          ),
          Form(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Visibility(
                  visible: comentario,
                  child: TextFormField(
                    controller: comentarioController,
                    enabled: comentario,
                    minLines: 4,
                    maxLines: 7,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.comment),
                      labelText: 'Comentario',
                    ),
                    onChanged: (value) => context
                        .read<PostularOfertaLaboralBloc>()
                        .add(
                          PostularOfertaLaboralEvent.comentarioCambiado(value),
                        ),
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
                            context.read<PostularOfertaLaboralBloc>().add(
                                PostularOfertaLaboralEvent.postulacionRealizada(
                                    oferta.uuid,
                                    Identificador.fromUniqueString(
                                        "33333333-3333-3333-3333-333333333333"),
                                    oferta.uuidEmpresa!));
                          },
                          child: const Text('Enviar Postulacion'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    comentarioController.clear();
    super.dispose();
  }
}

// Scaffold(
//       appBar: AppBar(
//         title: const Text('Postulacion'),
//         leading: IconButton(
//           icon: const Icon(Icons.exit_to_app),
//           onPressed: () {
//             AutoRouter.of(context).replace(const VerListaOfertasRoute());
//           },
//         ),
//       ),
//       body: Center(
//         child: Card(
//           elevation: 15,
//           margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Column(
//               children: <Widget>[
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   oferta.titulo.getOrCrash(),
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                     child: Text(
//                       'Empresa: ${oferta.nombreEmpresa.getOrCrash()}',
//                       style: const TextStyle(
//                           fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                     child: Text(
//                       'Duracion: ${oferta.duracion.getOrCrash()}',
//                       style: const TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                     child: Text(
//                       'Descripción: ${oferta.descripcionOferta.getOrCrash()}',
//                       style: const TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                     child: Text(
//                       'Turno de trabajo: ${oferta.turno.getOrCrash()}',
//                       style: const TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                     child: Text(
//                       'Sueldo: ${oferta.sueldo.getOrCrash()}\$',
//                       style: const TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                     child: Text(
//                       'Vacantes: ${oferta.numeroVacantes.getOrCrash()}',
//                       style: const TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                     child: Text(
//                       'Publicado el:  ${oferta.fechaPublicacion.getOrCrash().day.toString().padLeft(2, '0')}-${oferta.fechaPublicacion.getOrCrash().month.toString().padLeft(2, '0')}-${oferta.fechaPublicacion.getOrCrash().year.toString()}',
//                       style: const TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     prefixIcon: Icon(Icons.lock),
//                     labelText: 'Contraseña',
//                   ),
//                   autocorrect: false,
//                   obscureText: true,
//                   onChanged: (value) => context
//                       .read<PostularOfertaLaboralBloc>()
//                       .add(
//                           PostularOfertaLaboralEvent.comentarioCambiado(value)),
//                   validator: (value) => context
//                       .read<PostularOfertaLaboralBloc>()
//                       .state
//                       .password
//                       .value
//                       .fold(
//                         (f) => f.maybeMap(
//                           contrasenaCorta: (_) => 'La contraseña es muy corta.',
//                           contrasenaLarga: (_) => 'La contraseña es muy larga.',
//                           contrasenaVacia: (_) => 'La contraseña está vacia.',
//                           orElse: () => null,
//                         ),
//                         (_) => null,
//                       ),
//                 ),
//                 const SizedBox(height: 4),
//                 ButtonBar(
//                   children: <Widget>[
//                     ElevatedButton(
//                       onPressed: () => {
//                         const Center(
//                           child: CircularProgressIndicator(),
//                         )
//                       },
//                       child: const Text('Aplicar a oferta'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
  