import 'package:flutter/material.dart';

 final _icon = <String, IconData> {

  'add_alert'       : Icons.add_alert,
  'accessibility'   : Icons.accessibility,
 'folder_open'     : Icons.folder_open,

 };

 Icon getIcon ( String nobreIcono) {

  return Icon( _icon[nobreIcono] , color:Colors.blue );

 }