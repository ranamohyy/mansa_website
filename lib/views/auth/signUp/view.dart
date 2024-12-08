import 'package:flutter/material.dart';
import 'package:mansa/core/res/responsive.dart';
import 'package:mansa/devices/tablet/signUp.dart';
import '../../../devices/chrome/signUp.dart';
import '../../../devices/mobile/auth/signUp/view.dart';
class SignupView extends StatefulWidget {
  const SignupView({super.key});
  @override
  State<SignupView> createState() => _SignupViewState();
}
class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:Responsive(
            mob: (context) =>  MobileSignupView(),
            web: (context) =>  WebSignUpView() ,
            tab: (context) =>  TabletSignupView(),)

    );
  }
}
