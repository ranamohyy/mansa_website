import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/helpers/custom_button.dart';
import '../../core/helpers/custom_my_input.dart';
import '../../core/routes/route.dart';
import '../../core/utils/constans.dart';
import '../../views/auth/forget_password/view.dart';
import '../../views/home/home.dart';
import '../mobile/auth/widgets/donot_have_account.dart';
import '../mobile/auth/widgets/logo_name_app.dart';
import '../mobile/auth/widgets/text_auth.dart';

class WebLoginView extends StatelessWidget {
  WebLoginView({super.key});
  final _key = GlobalKey<FormState>();
  final TextEditingController _idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final space = SizedBox(height: height * 0.001.h);
    final gap = SizedBox(height: 10.h);
    final gapButton = SizedBox(height: 15.h);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Form(
        key: _key,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              gapButton,
              Container(height: 50, width: 50, child: const LogoOfAppWidget()),
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
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      AppRouter.navigateTo(const ForgetPassword());
                    },
                    child: Text("forget",
                            style: kTextStyle11grey.copyWith(fontSize: 14))
                        .tr(),
                  ),
                ],
              ),
              MyButton(
                child: const Text(
                  "Login",
                  style: kTextStyle14White,
                ).tr(),
                onPressed: () {
                  _idController.text.isEmpty
                      ? AppRouter.navigateAndRemoveAll(const HomePage(
                          type: notOurStudent,
                        ))
                      : AppRouter.navigateAndRemoveAll(const HomePage(
                          type: ourStudent,
                        ));
                },
              ),
              gapButton,
              MyButton(
                backgroundColor: kSecondColor,
                child: const Text(
                  "newVisitor",
                  style: kTextStyle14White,
                ).tr(),
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
        ),
      ),
    );
  }
}
