import 'package:flutter/material.dart';
import 'package:project/screens/cart.dart';
import 'package:project/screens/fav.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/noti.dart';

final Map<String, WidgetBuilder> map = {
  '/home': (BuildContext context) => Home(),
  '/fav': (BuildContext context) => Fav(),
  '/cart': (BuildContext context) => Cart(),
  '/noti': (BuildContext context) => Noti(),
};
