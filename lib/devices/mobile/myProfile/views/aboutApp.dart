import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/devices/mobile/auth/widgets/text_auth.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
class Aboutapp extends StatelessWidget {
  const Aboutapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBarHelper(text: "aboutApp"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child:
              TextAuth(
                  style: kTextStyle11grey.copyWith(fontSize: 15.sp),
                  text: "هذا التطبيق هنا لمساعدتك لمزاكرة و فهم ماده الكيمياء مع الأستاد احمد الدجلة و متابعة مستواك مع وجود امتحانات للمتابعة."
                  ),
            )
          ],
        ),
      ),
    );
  }
}
