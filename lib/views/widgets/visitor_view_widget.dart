import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/res/responsive.dart';

import '../../core/assets.dart';
import '../../core/helpers/custom_button.dart';
import '../../core/routes/route.dart';
import '../../core/utils/constans.dart';
import '../../core/utils/utils.dart';
import '../auth/signUp/view.dart';
class VisitorViewWidget extends StatelessWidget {
  const VisitorViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return         Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImage.noData),
        SizedBox(height: 10.h,),
        Center(
          child: SizedBox(
            height: 40.h,
            width:Responsive.isMob(context)?200.w:Utils.sizeOfButtonForMyProfileVisitor(context),
            child: MyButton(
              onPressed: (){
                AppRouter.navigateAndRemoveAll(const SignupView());},
              child: const Text(
                "noData",style: kTextStyle14White,
              ).tr(),
            ),
          ),
        ),
      ],
    );

  }
}
