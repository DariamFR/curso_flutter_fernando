
import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres',"Cuatro",'Cinco'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Morsis Components')
      ),
      body: ListView(
        children: _crearItems()
    )
    );
  }

  List<Widget> _crearItems(){      //metodo de creacion de listas

    final List<Widget> lista =[];

    for (String opt in opciones){

    final tempWidget = ListTile(
      title: Text( opt ),
      subtitle: Text('descripcion'),
      leading: Icon(Icons.account_balance),
      trailing: Icon(Icons.arrow_forward_outlined),
    );

    lista..add( tempWidget )    // .. son operador de cascada
         ..add( Divider() );    //  Divider espacio entre items


  }
     return lista;
  }
}
