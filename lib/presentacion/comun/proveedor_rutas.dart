import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');

    final Map dataMap = json.decode(resp) as Map;
    return opciones = dataMap['rutas'] as List;
  }
}

final menuProvider = _MenuProvider();
