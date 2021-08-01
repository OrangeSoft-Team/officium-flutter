part of 'ver_ofertas_laborales_bloc.dart';

@freezed
class VerOfertasLaboralesEvent with _$VerOfertasLaboralesEvent {
  const factory VerOfertasLaboralesEvent.verTodasLasOfertasLaboralesEmpezado() =
      _VerTodasLasOfertasLaboralesEmpezado;

  const factory VerOfertasLaboralesEvent.ofertarLaboralesRecibidas(
      Either<ContratacionExcepcion, List<OfertaLaboral>>
          ofertasOExcepciones) = _OfertarLaboralesRecibidas;
}
