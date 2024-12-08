import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/assets.dart';
import '../../core/utils/constans.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
          child: Image.asset(AppImage.students)),
      SizedBox(height: 10.h,),

       Text("walk up" ,style: kTextStyle24.copyWith(fontSize: 22)).tr(),


    ],);
  }
}
