import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/oferta_laboral/ver_ofertas_laborales/ver_ofertas_laborales_bloc.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/elementos/error_critico.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/elementos/error_oferta.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/elementos/mock.dart';
import 'package:officium_flutter/presentacion/ofertas_laborales/ver_lista_ofertas/elementos/tarjeta_oferta.dart';

class ListaOfertas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerOfertasLaboralesBloc, VerOfertasLaboralesState>(
        builder: (context, state) {
      return state.map(
        inicial: (_) => Container(),
        // cargaEnProgreso: (_) => const Center(
        //   child: CircularProgressIndicator(),
        // ),
        cargaEnProgreso: (state) {
          return ListView.builder(
            itemBuilder: (context, index) {
              // final oferta = state.ofertasLaborales[index];
              final oferta = ofertaLaboralMock;
              if (oferta.falloOpcion.isSome()) {
                return TarjetaOfertaErronea(oferta: oferta);
              } else {
                return TarjetaOferta(oferta: oferta);
              }
            },
            itemCount: 1,
          );
        },
        cargaExitosa: (state) {
          return ListView.builder(
            itemBuilder: (context, index) {
              // final oferta = state.ofertasLaborales[index];
              final oferta = ofertaLaboralMock;
              if (oferta.falloOpcion.isSome()) {
                return TarjetaOfertaErronea(oferta: oferta);
              } else {
                return TarjetaOferta(oferta: oferta);
              }
            },
            itemCount: state.ofertasLaborales.length,
          );
        },
        cargaFallida: (state) {
          return ErrorCriticoListaOfertas(
            failure: state.ofertaLaboralExcepcion,
          );
        },
      );
    });
  }
}
