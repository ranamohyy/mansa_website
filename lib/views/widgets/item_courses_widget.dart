import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/res/responsive.dart';
import '../../core/utils/constans.dart';
import '../widgets2/logo_name_app.dart';
import '../widgets2/text_auth.dart';
class ItemCoursesWidget extends StatelessWidget {
  const ItemCoursesWidget({super.key,
    this.height,this.width,
    required this.labels, this.type,this.widget});
  final String labels;
  final String? type;
  final  String? widget;
  final double ?height;
  final double ?width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity ,
      height:100 ,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(blurRadius: 2, color: Colors.grey)],
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children:[
          Positioned(
            top: 2,bottom: 2,right: 2,left: 2,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextAuth(text: labels, style: kTextStyle15bold),
              // SizedBox(
              //   height: 8.h,
              // ),
              const Spacer(),
              Stack(alignment: Alignment.center, children: [
                const LogoOfAppWidget(),
                Icon(
                  type==ourStudent  || widget == "me"?
                  Icons.slow_motion_video:
                      Icons.lock_outline
                  ,
                  size: 90,
                  color: Colors.grey[400],
                ),

              ]),
              // SizedBox(
              //   height: 4,
              // ),
              //

              const Spacer(),
                    ]),
          ),
          type==visitor || widget == "me"?const SizedBox() :
          Container(
            width:Responsive.isTab(context)||Responsive.isWeb(context)?
            type==notOurStudent?100.w :110:
            type==notOurStudent?100.w :125.w,
            height:
            Responsive.isTab(context)||Responsive.isWeb(context)?
            type==notOurStudent?40.h :35.h:
            32,
            decoration: BoxDecoration(
                color:  kColor,

                borderRadius: BorderRadius.circular(22.r)),
            child:
            Center(
              child: Text(
                type==ourStudent?
                "Third Secondary"  : "buy course",
                style: kTextStyle15grey.copyWith(color: Colors.white),
              ).tr(),
            ),
          ),

        ]),
    );
  }
}
