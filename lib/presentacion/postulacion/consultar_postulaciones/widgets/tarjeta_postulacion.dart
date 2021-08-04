import 'package:flutter/material.dart';
import 'package:officium_flutter/aplicacion/contratacion/postulacion/cancelar_postulacion_oferta_laboral/cancelar_postulacion_oferta_laboral_bloc.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/postulacion_oferta.dart';
import 'package:provider/src/provider.dart';

class TarjetaPostulacion extends StatelessWidget {
  final PostulacionOfertaLaboral postulacionOfertaLaboral;

  const TarjetaPostulacion({
    Key? key,
    required this.postulacionOfertaLaboral,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
                postulacionOfertaLaboral.tituloOferta!.getOrCrash(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 4),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cargo Oferta: ${postulacionOfertaLaboral.cargoOferta!.getOrCrash()}',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 4),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Estado de postulacion: ${postulacionOfertaLaboral.estado?.getOrCrash()}',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 4),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nomnbre Empresa: ${postulacionOfertaLaboral.nombreEmpresa!.getOrCrash()}\$',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 4),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () =>
                        _mostrarAlerta(context, postulacionOfertaLaboral.uuid),
                    child: const Text('Cancelar Postulacion'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context, Identificador uuidPostulacion) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: const Text('Cancelar Postulacion'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Text('¿Seguro que desea cancelar postulacion?'),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Regresar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: const Text('Cancelar Postulacion'),
                onPressed: () {
                  context.read<CancelarPostulacionOfertaLaboralBloc>().add(
                      CancelarPostulacionOfertaLaboralEvent
                          .postulacionCancelada(uuidPostulacion));
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
