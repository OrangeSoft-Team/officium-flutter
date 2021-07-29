import 'dart:io';

import 'package:dartz/dartz.dart';

abstract class IFuenteLocal {
 //
 Future<String> obtenerTokenLocal ();
 //
 Future<Unit> asignarTokenLocal (Cookie tokenCookie);
}