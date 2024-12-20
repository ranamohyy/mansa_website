import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/custom_my_input.dart';
import '../../../core/routes/route.dart';
import '../../../core/utils/constans.dart';
import '../../home/home.dart';
import '../../widgets/custom_button_for_devices.dart';
import '../../widgets/custom_logo_for_devices_in_auth.dart';
import '../../widgets2/donot_have_account.dart';
import '../../widgets2/forget_password.dart';
import '../../widgets2/text_auth.dart';

class BodyLoginView extends StatefulWidget {
  const BodyLoginView({
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
  State<BodyLoginView> createState() => _BodyLoginViewState();
}

class _BodyLoginViewState extends State<BodyLoginView> {
  bool isPasswordVisible = false;
  final _key = GlobalKey<FormState>();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
          TextAuth(text: "full name"),
          space,
          MyInput(
            text: "your full name",
            enabled: true,
          ),
          gap,
          TextAuth(text: "code"),
          space,
          MyInput(
            onTap: FocusScope.of(context).unfocus,
            keyboardType: TextInputType.number,
            validator: (v) {
              if (v == null || v.isEmpty) {
                return;
              }
            },
            text: 'code(with us)',
            controller: _idController,
          ),
          gap,
          TextAuth(text: "Password"),
          space,
          MyInput(
            text: 'Password ',
            controller: _passwordController,
          ),
          const ForgetPasswordWidget(),
          CustomButtonForDevices(
            onPressed: () {
              _idController.text.isEmpty
                  ? AppRouter.navigateAndRemoveAll(const HomePage(
                      type: notOurStudent,
                    ))
                  : AppRouter.navigateAndRemoveAll(const HomePage(
                      type: ourStudent,
                    ));
            },
            width: widget.buttonWidth!,
            text: "Login",
          ),
          gapButton,
          CustomButtonForDevices(
            color: kSecondColor,
            width: widget.buttonWidth!,
            text: "newVisitor",
            onPressed: () {
              AppRouter.navigateAndRemoveAll(const HomePage(
                type: visitor,
              ));
            },
          ),
          gap,
          const DoNotHaveAccountWidget()
        ],
      ),
    );
  }
}
