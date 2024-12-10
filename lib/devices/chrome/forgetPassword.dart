import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/helpers/custom_button.dart';
import '../../core/helpers/custom_my_input.dart';
import '../../core/utils/constans.dart';
import '../mobile/auth/widgets/logo_name_app.dart';
import '../mobile/auth/widgets/text_auth.dart';

class WebForgetPassword extends StatelessWidget {
  const WebForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
        child: Center(
          child: SizedBox(
            width: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 15.h),
                const AspectRatio(
                    aspectRatio: 0.1 / 0.032, child: LogoOfAppWidget()),
                TextAuth(text: 'email'),
                SizedBox(height: height * 0.01),
                MyInput(
                  text: 'email',
                ),
                SizedBox(height: height * 0.02),
                const Text(
                  "  Don’t worry if you forgot the password! Please enter your email\n  and we'll send you reset instructions.",
                  style: kTextStyle11grey,
                ).tr(),
                SizedBox(height: height * 0.03),
                Center(
                  child: SizedBox(
                    width: 250,
                    child: MyButton(
                      child: const Text(
                        "Submit",
                        style: kTextStyle14White,
                      ).tr(),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
