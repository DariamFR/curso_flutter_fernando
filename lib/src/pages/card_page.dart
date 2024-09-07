import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()

        ],
      ),
    );
  }

  Widget _cardTipo1(){

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text('Esta es una pequeña descripcion de la tarjeta XD'),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: [
              TextButton (onPressed: () {}, 
                child: Text('Cancelar'),
              ),
              TextButton (onPressed: () {},
                child: Text('OK'),
              ),
            ],
          ),
        ]
      )
    );

  }

  Widget _cardTipo2(){

    final card = Container(
      child: Column(
        children: [

          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgSVMLJAybwkPi2a8EjrNSjQySErCvnOH1Kg&s'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          //Image(
            //  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgSVMLJAybwkPi2a8EjrNSjQySErCvnOH1Kg&s')
           //),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Ni idea que poner'),
          )
          
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(30.0),
       color: Colors.white,
       boxShadow: <BoxShadow>[
         BoxShadow(
          color: Colors.black26,
          spreadRadius: 2.0,
          blurRadius: 10.0,
          offset: Offset(2.0, 10.0)
      )
          ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      )
    );

  }


}
