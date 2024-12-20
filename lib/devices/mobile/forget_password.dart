import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../views/auth/forget_password/body_forget_password.dart';
import 'package:flutter/material.dart';
class MobileForgetPassword extends StatelessWidget {
  const MobileForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
        child:const BodyForgetPassword(),
      ),
    );
  }
}
