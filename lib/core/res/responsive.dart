import 'package:flutter/material.dart';
class Responsive extends StatelessWidget {
  WidgetBuilder mob;
  WidgetBuilder tab;
  WidgetBuilder web;
   Responsive({super.key, required this.mob, required this.web,required this.tab});


  static bool isMob (BuildContext context)=> MediaQuery.of(context).size.width <= 600;
  static bool isWeb (BuildContext context)=> MediaQuery.of(context).size.width >=1024;
  static bool isTab (BuildContext context)=> MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <1024;
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (context, constraints) {
      var w = constraints.maxWidth;
      if (w <= 600) {
        return mob(context);
      }
      else if (w >= 600 && w < 1024) {
        return tab(context);
      }
      else {
        return web(context);
      }
    });
  }}