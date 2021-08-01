import 'package:flutter/material.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';

class ErrorCriticoListaOfertas extends StatelessWidget {
  final ContratacionExcepcion failure;

  const ErrorCriticoListaOfertas({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            'Oh no... algo ha ocurrido.',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            failure.maybeMap(
              errorServidor: (_) => 'Error del servidor',
              orElse: () => 'Error inesperado.',
            ),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('Contactar soporte'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
