import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/helpers/custom_button.dart';
import 'package:mansa/core/helpers/custom_my_input.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/views/auth/forget_password/view.dart';
import 'package:mansa/views/home/home.dart';
import '../../../../core/utils/constans.dart';
import '../widgets/donot_have_account.dart';
import '../widgets/logo_name_app.dart';
import '../widgets/text_auth.dart';

class MobileLoginView extends StatelessWidget {
   MobileLoginView({super.key});
   bool isPasswordVisible = false;
  final TextEditingController _idController = TextEditingController();
  final _key =GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final space = SizedBox(height: height * 0.001.h);
    final gap=SizedBox(height: 10.h);
    final gapButton=SizedBox(height: 15.h);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.0.w,vertical: 30.h),
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                gapButton,
                const LogoOfAppWidget(),
                TextAuth(text:"full name" ),
                space,
                MyInput(text: "your full name"),
                gap,
                TextAuth(text: "code"),
                space,

                MyInput(
                  keyboardType:TextInputType.number ,
                  validator: (v){
                    if(v==null||v.isEmpty){
                      return;
                    }
                  } ,
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
                    _idController.text.isEmpty?
                    AppRouter.navigateAndRemoveAll(const HomePage(type: notOurStudent,)):
                      AppRouter.navigateAndRemoveAll(const HomePage(type: ourStudent,));
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
                    AppRouter.navigateAndRemoveAll(const HomePage(type: visitor,));
                  },
                ),
                gap,
                const DoNotHaveAccountWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
