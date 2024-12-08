import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/res/responsive.dart';

import '../utils/constans.dart';
class MyInput extends StatelessWidget {
   MyInput({super.key,this.height,this.validator, this.obscureText=false,
     this.onChanged,required this.text,this.controller,this.autofillHints,this.keyboardType,this.enabled});
  void Function(String)? onChanged;
   TextEditingController? controller;
   String? Function(String?)? validator;
  String text;
   bool ?obscureText;
   Iterable<String>?autofillHints;
   TextInputType? keyboardType;
   double ?height;
   bool ?enabled;
   @override
  Widget build(BuildContext context) {
     return Center(
      child: SizedBox(
        width: Responsive.isWeb(context)? 200.w :height,
        child: TextFormField(
          enabled: enabled,
          autofillHints:autofillHints ,
          keyboardType:keyboardType ,
          obscureText: obscureText!,
          validator:validator,
          controller:controller ,
          cursorColor: kPrimaryColor,
          onChanged:onChanged ,
          decoration: InputDecoration(
            hintStyle: kTextStyle14Black.copyWith(color: Colors.grey.shade500),
            hintText: text.tr(),

          ),


        ),
      ),
    ) ;
  }
}
