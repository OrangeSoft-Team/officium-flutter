import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/presentacion/comun/app_widget.dart';

import 'inyeccion.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
