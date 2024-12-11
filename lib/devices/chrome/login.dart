import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../views/auth/login/body_login.dart';
class WebLoginView extends StatelessWidget {
  const WebLoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.h),
        child: Center(
          child: SizedBox(
            width: 450,
            child:  BodyLoginView(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              aspectRatio:0.18 / 0.07 ,
              buttonWidth: 70.w,
            ),
          ),
                ),
      ),
    );
  }
}
