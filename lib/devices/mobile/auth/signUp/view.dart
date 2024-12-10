import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/helpers/custom_button.dart';
import 'package:mansa/core/helpers/custom_my_input.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/views/home/home.dart';
import '../../../../core/utils/constans.dart';
import '../widgets/already_have_account.dart';
import '../widgets/logo_name_app.dart';
import '../widgets/text_auth.dart';

class MobileSignupView extends StatefulWidget {
  const MobileSignupView({super.key, this.type});
  final String? type;
  @override
  State<MobileSignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<MobileSignupView> {
  final TextEditingController _passwordController = TextEditingController();
  bool isPasswordVisible = false;
  final _key = GlobalKey<FormState>();
  final TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("==================${widget.type}");
    double height = MediaQuery.of(context).size.height;
    final space = SizedBox(height: height * 0.001.h);
    final gap = SizedBox(height: 10.h);
    final gapButton = SizedBox(height: 15.h);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
            child: Form(
              key: _key,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 15.h),
                    const LogoOfAppWidget(),
                    TextAuth(
                      text: 'code',
                    ),
                    space,
                    MyInput(
                      keyboardType: TextInputType.number,
                      controller: codeController,
                      text: "code(with us)",
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return;
                        }
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
                    MyButton(
                      child: const Text(
                        "Create Account",
                        style: kTextStyle14White,
                      ).tr(),
                      onPressed: () {
                        if (codeController.text.isNotEmpty) {
                          AppRouter.navigateAndRemoveAll(const HomePage(
                            type: ourStudent,
                          ));
                        } else {
                          AppRouter.navigateAndRemoveAll(
                              const HomePage(type: notOurStudent));
                        }
                      },
                    ),
                    space,
                    const AlreadyHaveAccountWidget(),
                  ]),
            )),
      ),
    );
  }
}
