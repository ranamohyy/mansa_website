import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/helpers/custom_button.dart';
import 'package:mansa/core/helpers/custom_my_input.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/devices/mobile/auth/widgets/text_auth.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:const  AppBarHelper(text: "FAQ"),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.w,vertical: 30.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextAuth(text: "enter suggestion"),
              SizedBox(height: 4.h,),
              MyInput(
                  text: "Type your suggestion"),
              SizedBox(height:20.h),
              Center(
                child: SizedBox(
                  width: 100.w,
                  child: MyButton(
                      onPressed: (){},
                      child:TextAuth(text: "send",style:  kTextStyle20white.copyWith(fontSize: 17.sp),) ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
