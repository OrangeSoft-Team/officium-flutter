import 'package:flutter/material.dart';
import 'package:officium_flutter/presentacion/iniciar_sesion/inicio_sesion.dart';

const themeColor = 0xFF5D60F5;
const accentColor = 0xFF5D60F5;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Officium',
      home: InicioSesionVista(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: const Color(themeColor),
              secondary: const Color(accentColor),
            ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(accentColor)),
          ),
          labelStyle: const TextStyle(color: Color(themeColor)),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            primary: Colors.white,
            backgroundColor: const Color(themeColor),
            padding: const EdgeInsets.all(16.0),
          ),
        ),
      ),
    );
  }
}
