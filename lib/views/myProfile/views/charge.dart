import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/assets.dart';
import 'package:mansa/core/helpers/custom_my_input.dart';
import 'package:mansa/core/res/responsive.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/views/home/home.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
import 'package:mansa/views/widgets/custom_button_for_devices.dart';
import '../../../core/helpers/changes.dart';
class ChargeWallet extends StatelessWidget {
  final String type;
  final int selectedItem;
  final String interScreen;
  const ChargeWallet({super.key,required this.type,required this.selectedItem,required this.interScreen});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: Responsive.isWeb(context)&&type=='web'?null: const AppBarHelper(text: "المحفظة"),
      body:
      BuyCourse(selectedItem: selectedItem,interScreen: interScreen,)
    );
  }
}

class BuyCourse extends StatelessWidget {
  const BuyCourse({
    super.key,
    required this.selectedItem,
    required this.interScreen
  });

  final int selectedItem;
  final String interScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          AspectRatio(
              aspectRatio: 0.04/0.007,
              child: Image.asset(AppImage.fawry,)),
          SizedBox(height: 12.h,),
          const Text("برجاء التوجهه إلي أقرب ماكينة فوري لشحن المحفظة سيتم إرسال كود علي هاتفك وثم شراء الكورس"),
          SizedBox(height: 12.h,),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.w,vertical: 10),
              child: MyInput(text: "أدخل الكود هنا",))
          ,SizedBox(
              width: 110.w,
              child: CustomButtonForDevices(onPressed: (){
                if( interScreen=='buyCourse'){
                  Changes.chargeStatus[selectedItem]=true;
                  AppRouter.navigateTo(
                      HomePage(
                        type: notOurStudent,doneCharged:selectedItem ,));


                }else {return;}
              },
                style:kTextStyle20white,
                text:"شحن",
                 width: 150,color: kPrimaryColor,
              )
          )// Text(,style: kTextStyle20white.copyWith(fontSize: 17.sp),)))
        ],
      ),
    );
  }
}
