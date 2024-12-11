import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../views/auth/login/body_login.dart';
class TabletLoginViw extends StatelessWidget {
   const TabletLoginViw({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
      child: Center(
        child: SizedBox(
          width: 450,
          child: BodyLoginView(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            aspectRatio: 0.08 / 0.032 ,
            buttonWidth: 100.w,
          ),
        ),
      ),
    );

  }
}
