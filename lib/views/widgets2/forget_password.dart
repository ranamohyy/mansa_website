import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/route.dart';
import '../../../../core/utils/constans.dart';
import '../../../../views/auth/forget_password/view.dart';
class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        TextButton(
          onPressed: () {
            AppRouter.navigateTo(const ForgetPassword());
          },
          child: Text("forget",
              style: kTextStyle11grey.copyWith(fontSize: 14))
              .tr(),
        ),
      ],
    );
  }
}
