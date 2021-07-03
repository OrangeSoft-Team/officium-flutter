import 'package:flutter/material.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';

class TarjetaOferta extends StatelessWidget {
  final OfertaLaboral oferta;

  const TarjetaOferta({
    Key? key,
    required this.oferta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: <Widget>[
            Text(
              oferta.titulo.getOrCrash(),
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 4),
            Text(
              'Duracion: $oferta.duracion.getOrCrash().duracion.toString() $oferta.duracion.getOrCrash().escala',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(
              'Turno de trabajo: $oferta.turno.getOrCrash()',
              style: const TextStyle(fontSize: 18),
            ),
            ButtonBar(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {/* ... */},
                  child: const Text('Ver detalles'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
