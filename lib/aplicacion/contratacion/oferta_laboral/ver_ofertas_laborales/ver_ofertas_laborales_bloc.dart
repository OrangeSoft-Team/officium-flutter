import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/dominio/contrataciones/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/contrataciones/excepciones_dominio/contrataciones_excepciones.dart';
import 'package:officium_flutter/dominio/contrataciones/servicios_dominio/repositorio/i_contratacion_repositorio.dart';

part 'ver_ofertas_laborales_event.dart';
part 'ver_ofertas_laborales_state.dart';
part 'ver_ofertas_laborales_bloc.freezed.dart';

@injectable
class VerOfertasLaboralesBloc
    extends Bloc<VerOfertasLaboralesEvent, VerOfertasLaboralesState> {
  final IContratacionesRepositorio _iOfertaLaboralRepositorio;

  VerOfertasLaboralesBloc(
    this._iOfertaLaboralRepositorio,
  ) : super(const VerOfertasLaboralesState.inicial());

  StreamSubscription<Either<ContratacionExcepcion, List<OfertaLaboral>>>?
      _ofertaLaboralSuscripcion;

  @override
  Stream<VerOfertasLaboralesState> mapEventToState(
    VerOfertasLaboralesEvent event,
  ) async* {
    yield* event.map(
      verTodasLasOfertasLaboralesEmpezado: (e) async* {
        yield const VerOfertasLaboralesState.cargaEnProgreso();
        await _ofertaLaboralSuscripcion?.cancel();
        _ofertaLaboralSuscripcion = _iOfertaLaboralRepositorio
            .verTodasLasOfertasLaborales()
            .listen((ofertasOExcepciones) => add(
                VerOfertasLaboralesEvent.ofertarLaboralesRecibidas(
                    ofertasOExcepciones)));
      },
      ofertarLaboralesRecibidas: (e) async* {
        yield e.ofertasOExcepciones.fold(
          (excepciones) => VerOfertasLaboralesState.cargaFallida(excepciones),
          (ofertasLaborales) =>
              VerOfertasLaboralesState.cargaExitosa(ofertasLaborales),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _ofertaLaboralSuscripcion?.cancel();
    return super.close();
  }
}
