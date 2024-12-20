import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../core/helpers/custom_button.dart';
import '../../core/res/responsive.dart';
import '../../core/utils/constans.dart';
class CustomButtonForDevices extends StatelessWidget {
  const CustomButtonForDevices({super.key,this.style,
    this.color,
    required this.width,
    required this.text,required this.onPressed});
  final String text;
  final void Function()onPressed;
  final double width;
  final Color?color;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    if(Responsive.isWeb(context)||Responsive.isTab(context)){
      return Center(child: SizedBox(
        width: width,
        child: MyButton(
            backgroundColor: color??kPrimaryColor,
            onPressed: onPressed,
            child: Text(text
              ,style: style?? kTextStyle14White,

            ).tr()),
      ),
      );
    }else{
      return MyButton(
          backgroundColor:color??kPrimaryColor ,
          onPressed:onPressed,
          child: Text(text
            ,style: kTextStyle14White,

          ).tr());
    }
  }
}
