import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../views/lessons/course_view.dart';
import '../../views/myProfile/views/charge.dart';
import '../res/responsive.dart';
import '../routes/route.dart';
import 'constans.dart';
class Utils {
  static void show(BuildContext context) {
    showDialog(
      context: context,

      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  static void hide(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
  static String? validatePassword(String password) {
    if(password.isEmpty){return 'Please enter a password';
    }
    else if (password.length <= 8) {
      return 'password must be more tha 7 words';
    }
    else {
    final bool passwordValid =
    RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(password);
    return passwordValid ? null : "Password must contain letters and numbers";
  }}
  static String? validateEmail(String email) {
    if(email.isEmpty){
      return 'Please enter an Email';
    }
   else{ final bool emailValid =
    RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(email);
    return emailValid ? null : 'Invalid Email Format';
  }}
static String capitalize(String word) {
  return word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1).toLowerCase();
}
 static String formatName(String username) {
    // تقسيم بناءً على الحروف الكبيرة أو عند التعرف على مقطع جديد
    String firstName = '';
    String lastName = '';

    for (int i = 1; i < username.length; i++) {
      // إذا وجدنا بداية مقطع جديد (عند وجود حرف كبير أو بداية اسم آخر)
      if (username[i].toUpperCase() == username[i]) {
        firstName = username.substring(0, i);
        lastName = username.substring(i);
        break;
      }
    }

    // إذا لم نجد حروف كبيرة، نحاول تقسيم يدويًا في منتصف الاسم
    if (lastName.isEmpty) {
      int mid = (username.length / 2).round();
      firstName = username.substring(0, mid);
      lastName = username.substring(mid);
    }

    return '${capitalize(firstName)} ${capitalize(lastName)}';
  }

  static double  sizeOfItem(context) {
    final width=MediaQuery.of(context).size.width;
    if(width<=720){
      return  190/ 180 ;

    }else if(width>720&&width<915){
      print("hiiiiiiiiiiiii");
      return 190/ 180 ;
    }else if(width<980){
      print(width);
      return 80/ 70 ;
    }else{
      return 80/ 60;
    }

  }
  static double  sizeOfItemCourseForHomeAndCourses(context) {
    final width=MediaQuery.of(context).size.width;
    if(width==1050){
      return  120.w/ 175.h ;}
    if(width>650&&width<700){return 0.5;}
    //tablet item const ratio 650 -->845
      else if(width >700&&width<845){
      return
          4.w/12.h;
       }
    //tablet item const ratio 845 -->1000
    else if(width >845&&width<1000){
      return 0.9;}
    //web item const ratio 1000 -->1080
    else if(width >=1000&&width<1080){
      return 0.7;
    }
    //web item const ratio 1000 -->1500
    else  {
      return 0.1.w/0.35.h;
    }

  }
  static double  sizeOfButtonForMyProfileVisitor(context) {
    final width=MediaQuery.of(context).size.width;
    if(width>950&&width<1250){
      return  240;
    }
    if(width>1250){

      return  290.w;
    }
      else{

      return 220;
    }
    }


  static double setSizeOfItems(context){
    final width=MediaQuery.of(context).size.width;
    if (width>1320){return 0.7/0.6;}
    else {return 1;}
  }
  static   int setCountOfItems(context){
    final width=MediaQuery.of(context).size.width;
    if (Responsive.isMob(context)){return 2;}
    else if(width>=600&&width<740){return 2;}
    else if (Responsive.isTab(context)){return 3;}
    else if(width>=1024&&width<1200){return 3;}
    else {return 4;}
  }


  static void routeInHomeWithAllTypes(String type,String title){
    if (type == ourStudent) {
  AppRouter.navigateTo(CourseView(title: title,));
  } else if (type == notOurStudent) {
  AppRouter.navigateTo(const ChargeWallet(type: 'type',));
  } else {
       return ;
  }
}
static  changeLanguage(BuildContext context){
  final newLocale = context.locale.languageCode == "en"
      ? const Locale('ar')
      :const  Locale('en');
  context.setLocale(newLocale);


}

}
