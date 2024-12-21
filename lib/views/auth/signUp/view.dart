import 'package:flutter/material.dart';
import 'package:mansa/core/res/responsive.dart';
import 'package:mansa/devices/tablet/signUp.dart';
import '../../../devices/chrome/signUp.dart';
import '../../../devices/mobile/signUp.dart';
class SignupView extends StatelessWidget {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: Colors.white,
        body:Responsive(
            mob: (context) =>  const MobileSignupView(),
            web: (context) =>  const WebSignUpView() ,
            tab: (context) =>  const TabletSignupView(),)

    );
  }
}
