import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/res/responsive.dart';
import '../../core/helpers/changes.dart';
import '../../core/utils/constans.dart';
import '../widgets2/logo_name_app.dart';
import '../widgets2/text_auth.dart';
class ItemCoursesWidget extends StatelessWidget {
  const ItemCoursesWidget({super.key,
    this.height,this.width,
    required this.labels, this.type,required this.doneCharge,
    required this.itemIndex
  });
  final String labels;
  final String? type;
  final double ?height;
  final double ?width;
  final bool doneCharge;
  final int itemIndex;
  @override
  Widget build(BuildContext context) {
    print("change index for $itemIndex");
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
              const Spacer(),
              Stack(alignment: Alignment.center, children: [
                const LogoOfAppWidget(),
                Changes.changeIcon(type,itemIndex)

              ]),
              const Spacer(),
                    ]),
          ),
          type==visitor ?const SizedBox() :
          Container(
            width: 110,
            height: Responsive.isTab(context)||Responsive.isWeb(context)?
            type==notOurStudent?40.h :35.h:
            32,
            decoration: BoxDecoration(color:  kColor,
                borderRadius: BorderRadius.circular(22.r)),
            child:
            Center(
              child: Text(
                Changes.changeText(type,itemIndex),
                style: kTextStyle15grey.copyWith(color: Colors.white),
              ).tr()
            ),
          ),

        ]),
    );
  }
}
