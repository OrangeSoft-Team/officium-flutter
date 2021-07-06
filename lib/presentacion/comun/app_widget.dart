import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officium_flutter/aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart';
import 'package:officium_flutter/inyeccion.dart';
import 'package:officium_flutter/presentacion/routes/router.dart';

const themeColor = 0xFF5D60F5;
const accentColor = 0xFF5D60F5;

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<EstadoAutentificacionBloc>()
                ..add(
                  const EstadoAutentificacionEvent
                      .verificacionDeAutenticacionSolicitada(),
                ))
        ],
        child: MaterialApp(
          initialRoute: '/',
          routes: getRutasAplicacion(),
          title: 'Officcium',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            iconTheme: Theme.of(context).iconTheme.copyWith(
                  color: const Color.fromRGBO(93, 96, 245, 1),
                ),
            colorScheme: ThemeData().colorScheme.copyWith(
                  primary: const Color(themeColor),
                  secondary: const Color(accentColor),
                ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(themeColor),
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
        ));
  }
}
