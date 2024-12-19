import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/custom_my_input.dart';
import '../../../core/routes/route.dart';
import '../../../core/utils/constans.dart';
import '../../../devices/mobile/auth/widgets/already_have_account.dart';
import '../../../devices/mobile/auth/widgets/text_auth.dart';
import '../../home/home.dart';
import '../../widgets/custom_button_for_devices.dart';
import '../../widgets/custom_logo_for_devices_in_auth.dart';
class BodySignup extends StatefulWidget {
  const BodySignup({super.key, this.mainAxisAlignment, this.crossAxisAlignment, this.aspectRatio = 0.0, this.buttonWidth = 0.0,});
  final double? aspectRatio;
  final double? buttonWidth;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  @override
  State<BodySignup> createState() => _BodyLoginViewState();
}

class _BodyLoginViewState extends State<BodySignup> {
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
          TextAuth(
            text: 'code',
          ),
          space,
          MyInput(
            keyboardType: TextInputType.number,
            controller: _idController,
            text: "code(with us)",
            validator: (v) {
              if (v == null || v.isEmpty) {
                return;
              }
              return null;
            },
          ),
          gap,
          TextAuth(text: "full name"),
          space,
          MyInput(text: "your full name"),
          gap,
          TextAuth(
            text: "email",
          ),
          space,
          MyInput(text: 'email'),
          gap,
          TextAuth(text: "your phone"),
          space,
          MyInput(text: "your phone"),
          gap,
          TextAuth(text: "your parent number"),
          space,
          MyInput(text: "your parent number"),
          gap,
          TextAuth(
            text: "Password",
          ),
          space,
          MyInput(
            text: "Password ",
            controller: _passwordController,
          ),
          gap,
          TextAuth(
            text: "Confirm your password",
          ),
          space,
          MyInput(
            text: 'Confirm your password',
            controller: _passwordController,
          ),
          gapButton,
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
            text: "Create Account",
          ),
          gapButton,
          const AlreadyHaveAccountWidget()
        ],
      ),
    );
  }
}
