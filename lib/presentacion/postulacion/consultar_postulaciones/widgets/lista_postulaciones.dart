import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/contratacion/postulacion/ver_todas_postulaciones_oferta_laboral/ver_todas_postulaciones_oferta_laboral_bloc.dart';
import 'package:officium_flutter/presentacion/postulacion/consultar_postulaciones/widgets/error_critico.dart';
import 'package:officium_flutter/presentacion/postulacion/consultar_postulaciones/widgets/error_postulacion.dart';
import 'package:officium_flutter/presentacion/postulacion/consultar_postulaciones/widgets/tarjeta_postulacion.dart';

class ListaPostulaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerTodasPostulacionesOfertaLaboralBloc,
        VerTodasPostulacionesOfertaLaboralState>(builder: (context, state) {
      return state.map(
        inicial: (_) => Container(),
        cargaEnProgreso: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        cargaExitosa: (state) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final postulacion = state.postulaciones[index];
              if (postulacion.falloOpcion.isSome()) {
                return TarjetaPostulacionErronea(postulacion: postulacion);
              } else {
                return TarjetaPostulacion(
                    postulacionOfertaLaboral: postulacion);
              }
            },
            itemCount: state.postulaciones.length,
          );
        },
        cargaFallida: (state) {
          return ErrorCriticoPostulacion(
            failure: state.postulacionFacilladaExcepcion,
          );
        },
      );
    });
  }
}
