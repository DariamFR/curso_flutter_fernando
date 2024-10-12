import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showDialog(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                title: const Text('Titulo de la alerta'),
                content: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Volver al menu principal?'),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancelar')),
                  TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/'),
                      child: const Text('OK'))
                ],
              );
            },
          ),
          child: const Text(
            'Mostrar Alerta',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
