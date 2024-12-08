import 'package:flutter/material.dart';
final GlobalKey<NavigatorState>navKey=GlobalKey<NavigatorState>();
Route<dynamic>? onGenerateRouter(RouteSettings setting)=>null;
class AppRouter{
  static final state=navKey.currentState!;
  static Route<dynamic>_materialPageRoute(Widget page)=>MaterialPageRoute(builder: (context) =>page ,);
  static BuildContext context=navKey.currentContext!;
  static Future<dynamic>navigateTo(Widget page){
    return state.push(
    _materialPageRoute(page));

  }

  static Future<dynamic>navigateAndRemoveAll (Widget page)=>
      state.pushAndRemoveUntil
    (_materialPageRoute(page),
    (route) => false,
  )
  ;

  static Future<dynamic>navigateAndReplacement(Widget page)=>navKey.currentState!.pushReplacement(
    _materialPageRoute(page));

  static void pop ([Object? result])=>state.pop(result);



}