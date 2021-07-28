import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:officium_flutter/presentacion/comun/app_widget.dart';

import 'inyeccion.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await dotenv.load(fileName: ".env");
  runApp(AppState());
}
