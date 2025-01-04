import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mansa/core/utils/constans.dart';
import '../core/assets.dart';
import '../views/myProfile/views/aboutApp.dart';
import '../views/myProfile/views/charge.dart';
import '../views/myProfile/views/my_courses.dart';
import '../views/myProfile/views/myAcc.dart';
import '../views/myProfile/views/results.dart';
import '../views/myProfile/views/suggestions.dart';

class ProfileModel {
  static Map<String,Widget> tileAndIconComponents = {
    "Myaccount":const Icon(Icons.person,color: kPrimaryColor,),
    "courses":const Icon(Icons.school,color: kPrimaryColor,),
    "results":const FaIcon(FontAwesomeIcons.squarePollVertical,color: kPrimaryColor,),
    "recharge":const Icon(Icons.wallet,color: kPrimaryColor,),
    "FAQ":const Icon(Icons.comment,color: kPrimaryColor,),
    "aboutApp":const FaIcon(FontAwesomeIcons.circleQuestion, color: kPrimaryColor),
    "changeLang":const Icon(Icons.language, color: kPrimaryColor,),
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
    "home":const Icon(Icons.home_rounded,color: kPrimaryColor ,size: 24,),
    "Myaccount":const Icon(Icons.person,color: kPrimaryColor,),
    "courses":const Icon(Icons.school,color: kPrimaryColor,),
    "results":const FaIcon(FontAwesomeIcons.squarePollVertical,color: kPrimaryColor,),
    "recharge":const Icon(Icons.wallet,color: kPrimaryColor,),
    "FAQ":const Icon(Icons.comment,color: kPrimaryColor,),
    "aboutApp":const FaIcon(FontAwesomeIcons.circleQuestion, color: kPrimaryColor),
    "changeLang":const Icon(Icons.language, color: kPrimaryColor,),
    "logOut":SvgPicture.asset(AppImage.logout),


  };

}

