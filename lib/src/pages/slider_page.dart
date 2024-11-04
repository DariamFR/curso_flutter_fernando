import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();

}

 double _valorSlider = 100.0;

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        child: Column(
          children: [
            _crearSlider(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        ),
      ),
    );
  }

  _crearSlider() {

    return Slider(
      activeColor: Colors.indigo,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor){
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  _crearImagen() {

    return Image(
      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjm2o38rSFM7NST8qegvoERLJAmJW8TNJcvA&s'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );

  }
}

