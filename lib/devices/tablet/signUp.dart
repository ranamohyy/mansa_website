import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/views/auth/login/body_signUp.dart';

class TabletSignupView extends StatelessWidget {
  const TabletSignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
        child: Center(
          child: SizedBox(
            width: 450,
            child: BodySignup(
              crossAxisAlignment: CrossAxisAlignment.start,
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
