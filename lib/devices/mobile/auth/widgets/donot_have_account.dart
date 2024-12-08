import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/views/auth/login/view.dart';
import 'package:mansa/views/auth/signUp/view.dart';
import '../../../../core/utils/constans.dart';
class DoNotHaveAccountWidget extends StatelessWidget {
  const DoNotHaveAccountWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Don’t have an account?".tr(),
          style: kTextStyle11grey.copyWith(fontSize: 14),
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: GestureDetector(
                onTap: () {
                  AppRouter.navigateAndRemoveAll(const SignupView());
                },
                child: const Text(
                  "Create Account",
                  style: kTextStyle14underline
                ).tr(),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
