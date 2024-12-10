import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/views/auth/forget_password/view.dart';
import 'package:mansa/views/auth/login/view.dart';
import 'package:mansa/views/auth/signUp/view.dart';
import 'package:mansa/views/home/home.dart';
import 'devices/mobile/auth/login/view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
   runApp(EasyLocalization(
      path: 'assets/languages',
      fallbackLocale: Locale('en'),
      startLocale:const Locale('ar'),
      supportedLocales: const [Locale('en'),Locale('ar')],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(_, child) =>
          MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            debugShowCheckedModeBanner: false,
        navigatorKey: navKey,
        onGenerateRoute:onGenerateRouter ,
        title: 'Mansa website',
        theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22.r),
              borderSide: BorderSide(
                  color: Colors.grey.shade400,
                  width: 0
              ),

            ),
            enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.grey.shade400,
    width: 0
    ),

    borderRadius: BorderRadius.circular(22.r),

            ),

          ),
          elevatedButtonTheme:ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              maximumSize: MediaQuery.of(context).size,
              fixedSize: Size.fromHeight(45.h),
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(16.r)
              )
            )
          ),
          textTheme: GoogleFonts.interTightTextTheme(),
          colorScheme: ColorScheme.fromSeed(
              primary: kPrimaryColor,
              seedColor: Colors.red),
          useMaterial3: true,
        ),
        home:  const  LoginView()
        // HomePage(type: ourStudent) ,
      ),
    );
  }
}

