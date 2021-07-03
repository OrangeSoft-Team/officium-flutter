import 'package:officium_flutter/dominio/comun/value_objects/fecha.dart';
import 'package:officium_flutter/dominio/comun/value_objects/identificador.dart';
import 'package:officium_flutter/dominio/empresa/value_objects/nombre_empresa.dart';
import 'package:officium_flutter/dominio/oferta_laboral/entidades/oferta_laboral.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/Duracion_Oferta/duracion_escalas.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/Duracion_Oferta/duracion_estimada.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/cargo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/numero_vacantes.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/sueldo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/titulo.dart';
import 'package:officium_flutter/dominio/oferta_laboral/value_objects/oferta_laboral/turno_trabajo.dart';

final DuracionEscala dura = DuracionEscala(10, 'dia(s)');

final OfertaLaboral ofertaLaboralMock = OfertaLaboral(
    uuid: Identificador(),
    titulo: TituloOfertaLaboral('Se ofrece puesto en desarrollo'),
    fechaPublicacion: Fecha(DateTime.now()),
    cargo: Cargo('Desarrollador'),
    sueldo: Sueldo(1000),
    duracion: Duracion(const DuracionEscala(10, 'dia(s)')),
    turno: TurnoTrabajo('Mixto'),
    numeroVacantes: NumeroVacantes(10),
    nombreEmpresa: NombreEmpresa('OrangeSoft'));
