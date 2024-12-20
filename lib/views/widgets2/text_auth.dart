import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/res/responsive.dart';
import 'package:mansa/core/utils/constans.dart';
class TextAuth extends StatelessWidget {
   TextAuth( {super.key,required this.text,this.n,this.style});
final String text;
final double ?n;
   TextStyle? style;
  @override
  Widget build(BuildContext context) {
    var pad =Responsive.isWeb(context)||Responsive.isTab(context)?EdgeInsets.only(

      right: 15

    ):EdgeInsets.symmetric(horizontal: 10);
        return Padding(
      padding: pad
     ,child:  Text(
        text,
        style:style?? kTextStyle15bold,
      ).tr()
    );
  }
}
