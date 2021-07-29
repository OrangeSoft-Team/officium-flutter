import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/infraestructura/comun/local_storage/fuentes/fuente_local.dart';

@module
abstract class FuenteLocalModuloInjectable {
  final FlutterSecureStorage storage = FlutterSecureStorage();
  @LazySingleton()
  FuenteLocal get fuenteLocal => FuenteLocal(storage: storage);
}