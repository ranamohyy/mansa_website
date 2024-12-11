import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/views/auth/forget_password/body_forget_password.dart';

class WebForgetPassword extends StatelessWidget {
  const WebForgetPassword({super.key});

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
                child: BodyForgetPassword(
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
