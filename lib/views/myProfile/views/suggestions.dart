import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/helpers/custom_my_input.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
import '../../../../core/res/responsive.dart';
import '../../../../views/widgets/custom_button_for_devices.dart';
import '../../widgets2/text_auth.dart';
class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: scaffoldBackGroundColor,
      appBar:Responsive.isWeb(context)?null:const  AppBarHelper(text: "FAQ"),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.w,vertical: 30.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextAuth(text: "enter suggestion"),
              const SizedBox(height: 18,),
              SizedBox(
                width:Responsive.isWeb(context)?100.w :280,
                child: MyInput(
                    text: "Type your suggestion"),
              ),
              SizedBox(height:20.h),
              Center(
                child: SizedBox(
                  width: 100.w,
                  child:CustomButtonForDevices(onPressed: (){},
                style:kTextStyle20white,
                text:"إرسال",
                width: 170,color: kPrimaryColor,
              )

        )

              )
            ],
          ),
        ),
      ),
    );
  }
}
