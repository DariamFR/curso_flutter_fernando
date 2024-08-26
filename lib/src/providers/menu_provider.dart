  import 'dart:convert';
  import 'package:flutter/services.dart' show rootBundle;

  class _MenuProvider {

  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    String menu = 'data/menu-opts.json';

    final resp = await rootBundle.loadString(menu);

       Map dataMap = json.decode( resp );
       opciones = dataMap['rutas'];

       return opciones;
  }

  }
 final menuProvider = _MenuProvider();