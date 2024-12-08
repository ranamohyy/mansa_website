import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/helpers/custom_button.dart';
import 'package:mansa/core/helpers/custom_my_input.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/devices/mobile/auth/widgets/text_auth.dart';
import '../../../../views/widgets/app_bar_helper.dart';

class MyAcc extends StatelessWidget {
  const MyAcc({super.key});
  @override
  Widget build(BuildContext context) {
    final gap =SizedBox(height: 8.h,);
    final space = SizedBox(height: 4.h,);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:const AppBarHelper(
          text: "Myaccount",
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextAuth(text: "userName"),
                space,
                MyInput(
                  text: "رنا عمرو",
                  enabled: false,
                ),
                gap,
                TextAuth(
                  text: "yourCode",
                ),
                space,
                MyInput(
                  text: "1234",
                  enabled: false,
                ),
                gap,
                TextAuth(text: "edit password"),
                space,
                MyInput(text: "edit password"),
                gap,
                TextAuth(text: "confirm edit password"),
                space,
                MyInput(
                  text: "confirm edit password",
                ),
                SizedBox(height: 22.h,),
                Center(
                  child: SizedBox(
                    width: 200.w,
                    child: MyButton(
                        onPressed: () {},
                        child: TextAuth(
                          text: "edit your profile",
                          style: kTextStyle20white.copyWith(fontSize: 17.sp),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
