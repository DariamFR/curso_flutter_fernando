import 'package:fernando_componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Componentes',
      debugShowCheckedModeBanner: false, //ocultar el baner de depuracion
      home: Scaffold(
        body: Center(
          child:  HomePage(
          ),
        ),
      ),
    );
  }
}