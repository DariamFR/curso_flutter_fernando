import 'package:flutter/material.dart';

class CTextField extends StatefulWidget {
  final bool? autofocus;
  final TextCapitalization? textCapitalization;
  final Icon? icon;
  final Icon? suffixIcon;

  CTextField({

    this.autofocus ,
    this.textCapitalization,
    this.icon,
    this.suffixIcon,

  });

  @override
  State<CTextField> createState() => _CTextFieldState();
}

class _CTextFieldState extends State<CTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: widget.autofocus ?? false,
      textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text('Letras'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: widget.suffixIcon,
        icon: widget.icon,


      ),
      onChanged: (valor) {
        setState(() {
          // nombre = valor;
        });
      },


    );
  }
}
