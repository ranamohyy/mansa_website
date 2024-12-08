import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mansa/core/assets.dart';
import 'package:mansa/core/helpers/custom_button.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/views/home/home.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
class ChargeWallet extends StatelessWidget {
  const ChargeWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarHelper(text: "المحفظة"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(AppImage.fawry,),
            SizedBox(height: 12.h,),

            const Text("برجاء التوجهه إلي أقرب ماكينة فوري لشحن المحفظة سيتم إرسال كود علي هاتفك وثم شراء الكورس"),
            SizedBox(height: 12.h,)
            ,SizedBox(
                width: 110.w,
                child: MyButton(onPressed: (){
                  AppRouter.navigateTo(HomePage(type: ourStudent));

                }, child: Text("شحن",style: kTextStyle20white.copyWith(fontSize: 17.sp),)))
          ],
        ),
      ),
    );
  }
}
