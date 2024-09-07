import 'package:fernando_componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false, //ocultar el baner de depuracion

      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }

}
