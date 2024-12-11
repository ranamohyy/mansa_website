import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../views/auth/signUp/body_signUp.dart';
class MobileSignupView extends StatefulWidget {
  const MobileSignupView({super.key, });
  @override
  State<MobileSignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<MobileSignupView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
            child:const BodySignup()
        ),
      ),
    );
  }
}
