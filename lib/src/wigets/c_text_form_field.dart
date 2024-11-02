import 'package:flutter/material.dart';

class CTextFormField extends StatefulWidget {
  final bool? autofocus;
  final TextCapitalization? textCapitalization;
  final Icon? icon;
  final Text hintText;


  CTextFormField({

    this.autofocus ,
    this.textCapitalization,
    this.icon,
    required this.hintText,


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


    );
  }
}
