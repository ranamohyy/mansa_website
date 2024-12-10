import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/helpers/custom_button.dart';
import 'package:mansa/core/helpers/custom_my_input.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/views/home/home.dart';
import '../../../../core/utils/constans.dart';
import '../mobile/auth/widgets/already_have_account.dart';
import '../mobile/auth/widgets/logo_name_app.dart';
import '../mobile/auth/widgets/text_auth.dart';

class WebSignUpView extends StatefulWidget {
  WebSignUpView({super.key, this.type});
  final String? type;

  @override
  State<WebSignUpView> createState() => _WebSignUpViewState();
}

class _WebSignUpViewState extends State<WebSignUpView> {
  final TextEditingController _passwordController = TextEditingController();

  bool isPasswordVisible = false;

  final _key = GlobalKey<FormState>();

  final TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final space = SizedBox(height: height * 0.001.h);
    final gap = SizedBox(height: 10.h);
    final gapButton = SizedBox(height: 15.h);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
              child: Form(
                key: _key,
                child: Center(
                  child: Container(
                    width: 450,
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // SizedBox(height: 15.h),
                         const AspectRatio(
                              aspectRatio: 0.1 / 0.032,
                              child: LogoOfAppWidget()),
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
                          Center(
                            child: SizedBox(
                              width: 70.w,
                              child: MyButton(
                                child: const Text(
                                  "Create Account",
                                  style: kTextStyle14White,
                                ).tr(),
                                onPressed: () {
                                  if (codeController.text.isNotEmpty) {
                                    AppRouter.navigateAndRemoveAll(
                                        const HomePage(
                                      type: ourStudent,
                                    ));
                                  } else {
                                    AppRouter.navigateAndRemoveAll(
                                        const HomePage(type: notOurStudent));
                                  }
                                },
                              ),
                            ),
                          ),
                          space,
                          const AlreadyHaveAccountWidget(),
                        ]),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
