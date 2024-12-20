import 'package:flutter/material.dart';
import 'package:mansa/core/res/responsive.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';

import '../../widgets2/text_auth.dart';
class Aboutapp extends StatelessWidget {
  const Aboutapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:
      Responsive.isWeb(context)?null:
      const AppBarHelper(text: "aboutApp"),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextAuth(
                style: kTextStyle11grey.copyWith(fontSize: 17),
                text: "هذا التطبيق هنا لمساعدتك لمزاكرة و فهم ماده الكيمياء مع الأستاد احمد الدجلة و متابعة مستواك مع وجود امتحانات للمتابعة."
                )
          ],
        ),
      ),
    );
  }
}
