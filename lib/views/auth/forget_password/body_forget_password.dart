import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/custom_my_input.dart';
import '../../../core/utils/constans.dart';
import '../../../devices/mobile/auth/widgets/logo_name_app.dart';
import '../../../devices/mobile/auth/widgets/text_auth.dart';
import '../../widgets/custom_button_for_devices.dart';
import '../../widgets/custom_logo_for_devices_in_auth.dart';
class BodyForgetPassword extends StatefulWidget {
  const BodyForgetPassword({
    super.key,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.aspectRatio = 0.0,
    this.buttonWidth = 0.0,
  });
  final double? aspectRatio;
  final double? buttonWidth;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  @override
  State<BodyForgetPassword> createState() => _BodyLoginViewState();
}

class _BodyLoginViewState extends State<BodyForgetPassword> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final space = SizedBox(height: height * 0.001.h);
    final gap = SizedBox(height: 10.h);
    final gapButton = SizedBox(height: 15.h);
    return Form(
      key: _key,
      child: Column(
        mainAxisAlignment: widget.mainAxisAlignment ?? MainAxisAlignment.center,
        crossAxisAlignment:
        widget.crossAxisAlignment ?? CrossAxisAlignment.stretch,
        children: [
          gapButton,
          CustomLogoForDevices(
            aspectRatio: widget.aspectRatio!,
          ),
          TextAuth(text: 'email'),
          space,
          MyInput(
            text: 'email',
          ),
          gap,
          const Text(
            "  Don’t worry if you forgot the password! Please enter your email\n  and we'll send you reset instructions.",
            style:kTextStyle11grey,

          ).tr(),
          SizedBox(height: height * 0.03),
          CustomButtonForDevices(
            onPressed: () {
            },
            width: widget.buttonWidth!,
            text: "Submit",
          ),
        ],
      ),
    );
  }
}
