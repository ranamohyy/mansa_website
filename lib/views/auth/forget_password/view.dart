import 'package:mansa/core/res/responsive.dart';
import 'package:flutter/material.dart';

import '../../../devices/chrome/forgetPassword.dart';
import '../../../devices/mobile/forget_password.dart';
import '../../../devices/tablet/forget_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Responsive(
          mob: (context) => const MobileForgetPassword(),
          web: (context) => const WebForgetPassword(),
          tab: (context) => const TabletForgetPassword(),
        ));
  }
}
