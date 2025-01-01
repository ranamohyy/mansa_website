import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../core/assets.dart';
import '../views/myProfile/views/aboutApp.dart';
import '../views/myProfile/views/charge.dart';
import '../views/myProfile/views/my_courses.dart';
import '../views/myProfile/views/myAcc.dart';
import '../views/myProfile/views/results.dart';
import '../views/myProfile/views/suggestions.dart';

class ProfileModel {
  static Map<String,Widget> tileAndIconComponents = {
  "Myaccount":SvgPicture.asset(AppImage.user),
  "courses":SvgPicture.asset(AppImage.courses),
  "results":SvgPicture.asset(AppImage.results),
  "recharge":SvgPicture.asset(AppImage.chargeWallet),
  "FAQ":SvgPicture.asset(AppImage.faq),
  "aboutApp":const FaIcon(FontAwesomeIcons.circleQuestion, color: Color(0xff4EB7F2)),
  "changeLang":const Icon(
  Icons.language,
  color: Color(0xff4EB7F2),),
  "logOut":SvgPicture.asset(AppImage.logout),


  };
  static List<Widget>screens =[
    const MyAcc(),
    const MyCourses(),
    Results(),
    const ChargeWallet(type: '',interScreen: "",selectedItem: 0,),
    const Suggestions(),
    const Aboutapp(),

  ];
  static Map<String,Widget> tileAndIconComponentsForWeb = {
    "home":const Icon(Icons.home_rounded,color: Color(0xff4EB7F2) ,size: 24,),
    "Myaccount":SvgPicture.asset(AppImage.user),
    "courses":SvgPicture.asset(AppImage.courses),
    "results":SvgPicture.asset(AppImage.results),
    "recharge":SvgPicture.asset(AppImage.chargeWallet),
    "FAQ":SvgPicture.asset(AppImage.faq),
    "aboutApp":const FaIcon(FontAwesomeIcons.circleQuestion, color: Color(0xff4EB7F2)),
    "changeLang":const Icon(Icons.language, color: Color(0xff4EB7F2),),
    "logOut":SvgPicture.asset(AppImage.logout),


  };

}

