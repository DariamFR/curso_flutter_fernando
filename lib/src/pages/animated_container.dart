import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  final  _rng       = Random();
  var _width        = 50.0;
  var _height       = 50.0;
  Color  _color  = Colors.pink;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadiusGeometry,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed:() => setState(() {
          _borderRadiusGeometry = BorderRadius.circular(_rng.nextInt(100).toDouble());
          _width  = _rng.nextInt(300).toDouble() + 50;
          _height = _rng.nextInt(300).toDouble() +50;
          _color  = Color.fromRGBO(
              _rng.nextInt(256),
              _rng.nextInt(256),
              _rng.nextInt(256),
              1,
          );

        }
      )
    )
    );
  }
}




