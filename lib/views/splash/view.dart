import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mansa/core/assets.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/views/auth/login/view.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 10),() =>
    AppRouter.navigateTo(const LoginView()));
    Future.delayed(const Duration(seconds: 10),(){
      AppRouter.navigateTo(const LoginView());

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children:
        [
          Center(
            child:
            Image.asset(AppImage.logo)),

          SizedBox(
              width: 170,
              height: 230,
              child: SvgPicture.asset(AppImage.chemistry))
     ] ),
    );
  }
}


