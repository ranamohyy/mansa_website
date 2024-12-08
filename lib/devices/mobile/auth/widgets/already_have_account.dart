import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/views/auth/login/view.dart';

import '../../../../core/utils/constans.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Already have an account ?".tr(),
          style: kTextStyle11grey.copyWith(fontSize: 14),
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: GestureDetector(
                onTap: () {
                  AppRouter.navigateAndReplacement(const LoginView());
                },
                child: const Text("Login", style: kTextStyle14underline).tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
