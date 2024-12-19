import 'package:flutter/material.dart';
final GlobalKey<NavigatorState>navKey=GlobalKey<NavigatorState>();
Route<dynamic>? onGenerateRouter(RouteSettings setting)=>null;
class AppRouter{
  static final state=navKey.currentState!;
  static BuildContext context = navKey.currentContext!;
  static Route<dynamic>_materialPageRoute(Widget page){
    return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) =>page ,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.bounceIn;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);
return SlideTransition(
  position: offsetAnimation,
  child: child,
);
    },
    );
  }


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