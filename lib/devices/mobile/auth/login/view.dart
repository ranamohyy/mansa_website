import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../views/auth/login/body_login.dart';
class MobileLoginView extends StatefulWidget {
 const MobileLoginView({super.key,});
  @override
  State<MobileLoginView> createState() => _MobileLoginViewState();
}
class _MobileLoginViewState extends State<MobileLoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
          child:const BodyLoginView()
        )
      )
    );
  }
}
