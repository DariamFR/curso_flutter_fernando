import 'package:fernando_componentes/src/pages/alert_page.dart';
import 'package:fernando_componentes/src/pages/avatar_page.dart';
import 'package:fernando_componentes/src/pages/card_page.dart';
import 'package:fernando_componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage()
  };
}
