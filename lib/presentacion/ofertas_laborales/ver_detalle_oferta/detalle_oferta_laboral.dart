import 'package:flutter/material.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';

class DetalleOferta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OfertaLaboral oferta =
        ModalRoute.of(context)?.settings.arguments as OfertaLaboral;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detallles de oferta laboral'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Card(
          elevation: 15,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 5,
                ),
                Text(
                  oferta.titulo.getOrCrash(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Empresa: ${oferta.nombreEmpresa.getOrCrash()}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Duracion: ${oferta.duracion.getOrCrash()}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Descripción: ${oferta.descripcionOferta.getOrCrash()}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Turno de trabajo: ${oferta.turno.getOrCrash()}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sueldo: ${oferta.sueldo.getOrCrash()}\$',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Vacantes: ${oferta.numeroVacantes.getOrCrash()}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Publicado el:  ${oferta.fechaPublicacion.getOrCrash().day.toString().padLeft(2, '0')}-${oferta.fechaPublicacion.getOrCrash().month.toString().padLeft(2, '0')}-${oferta.fechaPublicacion.getOrCrash().year.toString()}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 4),
                ButtonBar(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () => {
                        AutoRouter.of(context)
                            .replace(PostularRoute(oferta: oferta)),
                      },
                      child: const Text('Aplicar a oferta'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
