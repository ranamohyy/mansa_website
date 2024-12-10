import 'package:flutter/material.dart';
import 'package:mansa/devices/chrome/login.dart';
import 'package:mansa/devices/tablet/login.dart';
import '../../../core/res/responsive.dart';
import '../../../devices/mobile/auth/login/view.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Responsive(
        mob:(context) =>   MobileLoginView(),
        tab:(context) =>   TabletLoginViw(),
        web:(context) =>   WebLoginView(),

      )

    );
  }
}
