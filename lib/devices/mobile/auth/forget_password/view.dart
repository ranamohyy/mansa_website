import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/helpers/custom_button.dart';
import 'package:mansa/core/helpers/custom_my_input.dart';
import '../../../../core/utils/constans.dart';
import '../widgets/logo_name_app.dart';
import 'package:flutter/material.dart';
import '../widgets/text_auth.dart';
class MobileForgetPassword extends StatelessWidget {
  const MobileForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 15.h),
            const LogoOfAppWidget(),
            TextAuth(text: 'email'),
            SizedBox(height: height * 0.01),
             MyInput(
                text: 'email',
               ),
            SizedBox(height: height * 0.02),
            const Text(
              "  Don’t worry if you forgot the password! Please enter your email\n  and we'll send you reset instructions.",
              style:kTextStyle11grey,

            ).tr(),
            SizedBox(height: height * 0.03),
            MyButton(
              child:const Text( "Submit",style: kTextStyle14White,).tr(),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
