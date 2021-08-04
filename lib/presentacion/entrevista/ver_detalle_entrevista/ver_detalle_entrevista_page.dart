import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/contratacion/oferta_laboral/ver_detalle_oferta_laboral/ver_detalle_oferta_laboral_bloc.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/inyeccion.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/widgets/error_critico.dart';

class DetalleEntrevista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Identificador uuidEntrevista =
        ModalRoute.of(context)?.settings.arguments as Identificador;

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
      body: BlocProvider(
        create: (context) => getIt<VerDetalleOfertaLaboralBloc>()
          ..add(
            VerDetalleOfertaLaboralEvent.verDetalleOfertaLaboralEmpezado(
                uuidEntrevista),
          ),
        child: bodyDetalle(context),
      ),
    );
  }

  Widget bodyDetalle(BuildContext context) {
    return BlocBuilder<VerDetalleOfertaLaboralBloc,
        VerDetalleOfertaLaboralState>(
      builder: (context, state) {
        return state.map(
          inicial: (_) => Container(),
          verDetalleOfertaLaboralEnProgreso: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          verDetalleOfertaLaboralCargada: (state) =>
              _tarjetaDetalle(state.ofertaLaboral, context),
          verDetalleOfertaLaboralFallida: (state) => ErrorCriticoListaOfertas(
            failure: state.ofertaLaboralExcepcion,
          ),
        );
      },
    );
  }

  Widget _tarjetaDetalle(OfertaLaboral oferta, BuildContext context) {
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
                  'Descripción: ${oferta.descripcionOferta?.getOrCrash()}',
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
                      Navigator.pushNamed(
                        context,
                        'postular',
                        arguments: oferta,
                      ),
                    },
                    child: const Text('Aplicar a oferta'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  // },
  //   );
  // }
}
