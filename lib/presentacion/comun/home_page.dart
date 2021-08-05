import 'package:flutter/material.dart';
import 'package:officium_flutter/presentacion/comun/proveedor_rutas.dart';
import 'package:officium_flutter/presentacion/comun/widgets/drawer.dart';
import 'package:officium_flutter/presentacion/utils/iconos.dart';
// ignore: implementation_imports

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerUsuario(),
      appBar: AppBar(
        title: const Text(
          'Officium',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          )
        ],
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: _listaItems(context, snapshot.data!),
          );
        } else {
          return const SizedBox(
              height: 400.0, child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }

  List<Widget> _listaItems(BuildContext context, List<dynamic> data) {
    final List<Widget> opciones = [];

    for (final opt in data) {
      final widgetTemp = ListTile(
        title: Text(opt['texto'] as String),
        leading: getIcon(opt['icon'] as String),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
          color: Color.fromRGBO(93, 96, 245, 1),
        ),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta'] as String);
        },
      );

      opciones..add(widgetTemp)..add(const Divider());
    }

    return opciones;
  }
}

  // List<Widget> _listaItems(List<dynamic> data, BuildContext context) {


