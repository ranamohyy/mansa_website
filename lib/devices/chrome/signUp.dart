import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/views/auth/login/body_signUp.dart';

class WebSignUpView extends StatefulWidget {
  const WebSignUpView({super.key});
  @override
  State<WebSignUpView> createState() => _WebSignUpViewState();
}

class _WebSignUpViewState extends State<WebSignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 30.h),
            child: Center(
              child: SizedBox(
                width: 450,
                child: BodySignup(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  aspectRatio: 0.18 / 0.07,
                  buttonWidth: 70.w,
                ),
              ),
            )),
      ),
    );
  }
}
