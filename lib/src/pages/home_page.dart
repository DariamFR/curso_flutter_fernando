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
          children: _listaItems(opcionesList),
        );
      },
    );
  }

  // int suma(int nummmm, {int? num1, int? num2, int? num3, int? num4}){
  //
  //   int resultado = num1! + num2! + num3!;
  //
  //   return resultado;
  // }
  // sumar 2 + 4 + 7 = 13

  // int res = Text(num3: 7,num1: 3, num2: 546);
  //res = 13

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];

    if (data.isNotEmpty) {
      for (var opt in data) {
        final widgetTemp = ListTile(
          title: Text(
            opt["texto"]!,
          ),
          // leading: getIcon( opt ['icon'] ),
          leading: const Icon(
            Icons.accessible,
            color: Colors.blue,
            weight: 8.0,
          ),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
            weight: 8.0,
          ),
          onTap: () {},
        );

        opciones
          ..add(widgetTemp)
          ..add(const Divider());
      }
    }

    return opciones;
  }
}
