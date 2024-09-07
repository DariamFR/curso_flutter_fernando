import 'package:fernando_componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
import '../providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (context, snapshot) {
        final opcionesList = snapshot.data ?? [];

        return ListView(
          children: _listaItems(opcionesList, context),
        );
      },
    );
  }


  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    if (data.isNotEmpty) {
      for (var opt in data) {
        final widgetTemp = ListTile(
          title: Text(
            opt["texto"]!,
          ),
          leading: getIcon( opt ['icon'] ),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
            weight: 8.0,
          ),
            onTap: () {

          Navigator.pushNamed(context, opt['ruta']);

        }
        );




        opciones
          ..add(widgetTemp)
          ..add(const Divider());
      }
    }

    return opciones;
  }
}
