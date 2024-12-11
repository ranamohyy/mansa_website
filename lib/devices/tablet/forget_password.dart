import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/views/auth/forget_password/body_forget_password.dart';
class TabletForgetPassword extends StatelessWidget {
  const TabletForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
        child: Center(
          child: SizedBox(
            width: 450,
            child: BodyForgetPassword(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              aspectRatio: 0.08 / 0.032,
              buttonWidth: 100.w,
            ),
          ),
        ),
      ),
    );
  }
}
