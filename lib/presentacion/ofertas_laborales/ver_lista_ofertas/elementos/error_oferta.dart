import 'package:flutter/material.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';

class TarjetaOfertaErronea extends StatelessWidget {
  final OfertaLaboral oferta;

  const TarjetaOfertaErronea({
    Key? key,
    required this.oferta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Text(
              'Oferta laboral invalida',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2!
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text(
              'Details for nerds:',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              oferta.falloOpcion.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
