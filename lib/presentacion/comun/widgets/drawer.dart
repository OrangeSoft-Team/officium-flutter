import 'package:flutter/material.dart';
import 'package:officium_flutter/aplicacion/autentificacion/estado_autentificacion/estado_autentificacion_bloc.dart';
import 'package:provider/src/provider.dart';

class DrawerUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: const Text("andresgdearnas@gmail.com"),
            accountName: const Text("Andres De Armas"),
            currentAccountPicture: GestureDetector(
              child: const CircleAvatar(
                child: Image(image: AssetImage("assets/img/avatar.png")),
              ),
              onTap: () => print("This is your current account."),
            ),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(93, 43, 245, 1),
            ),
          ),
          ListTile(
              title: const Text("Ajustes de Cuenta"),
              trailing: const Icon(
                Icons.person,
                color: Color.fromRGBO(93, 96, 245, 1),
              ),
              onTap: () {}),
          ListTile(
            title: const Text("Cerrar sesión"),
            trailing: const Icon(Icons.logout, color: Colors.red),
            onTap: () {
              context
                  .read<EstadoAutentificacionBloc>()
                  .add(const EstadoAutentificacionEvent.cerrarSesion());
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
    //   return Drawer(
    //     child: Column(
    //       children: [
    //         DrawerHeader(
    //           child: Container(
    //               height: 142,
    //               child: Image.asset(
    //                 "assets/img/avatar.png",
    //               )),
    //           decoration: BoxDecoration(
    //             color: Colors.transparent,
    //           ),
    //         ),
    //         ListTile(
    //           title: Center(child: Text('data')),
    //           onTap: () {},
    //         )
    //       ],
    //     ),
    //   );
    // }
  }
}
