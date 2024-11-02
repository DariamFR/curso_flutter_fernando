import 'package:flutter/material.dart';

class CTextFormField extends StatefulWidget {
  final bool? autofocus;
  final TextCapitalization? textCapitalization;
  final Icon? icon;
  final String hintText;
  final Color? borderColor;



  CTextFormField({

    this.autofocus ,
    this.textCapitalization,
    this.icon,
    required this.hintText,
    this.borderColor,


  });

  @override
  State<CTextFormField> createState() => _CTextFormFieldState();
}

class _CTextFormFieldState extends State<CTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: widget.textCapitalization ?? TextCapitalization.words,
      autofocus: widget.autofocus ?? false,
      decoration:  InputDecoration(
        hintText: widget.hintText,
        icon: Icon(Icons.account_circle_outlined),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(20.0),
        //   borderSide: BorderSide(
        //     color: widget.borderColor ?? Colors.grey,
        //       width: 2.0
        //   ),
        // ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: widget.borderColor ?? Colors.grey,// Borde rojo cuando el campo está habilitado width: 2.0, ),

      ),

    )));
  }
}
