import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mansa/core/assets.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/devices/mobile/myProfile/views/suggestions.dart';
import 'package:mansa/views/auth/login/view.dart';

import '../../devices/mobile/myProfile/views/aboutApp.dart';
import '../../devices/mobile/myProfile/views/charge.dart';
import '../../devices/mobile/myProfile/views/myAcc.dart';
import '../../devices/mobile/myProfile/views/myCourses.dart';
import '../../devices/mobile/myProfile/views/results.dart';
import 'custom_item_profile_widget.dart';

class CustomProfileWidget extends StatefulWidget {
  CustomProfileWidget({super.key, required this.type});
  final String type;

  @override
  State<CustomProfileWidget> createState() => _CustomProfileWidgetState();
}

class _CustomProfileWidgetState extends State<CustomProfileWidget> {
  List<String> labels = [
    "Myaccount",
    "courses",
    "results",
    "recharge",
    "FAQ",
    "aboutApp",
    "changeLang",
    "logOut"
  ];

  List<Widget> label = [
    MyAcc(),
    MyCourses(),
    Results(),
    ChargeWallet(),
    Suggestions(),
    Aboutapp(),
  ];

  List<Widget> icons = [
    SvgPicture.asset(AppImage.user),
    SvgPicture.asset(AppImage.courses),
    SvgPicture.asset(AppImage.results),
    SvgPicture.asset(AppImage.chargeWallet),
    SvgPicture.asset(AppImage.faq),
    const FaIcon(FontAwesomeIcons.circleQuestion, color: Color(0xff4EB7F2)),
    const Icon(
      Icons.language,
      color: Color(0xff4EB7F2),
    ),
    SvgPicture.asset(AppImage.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemCount: labels.length,
          itemBuilder: (context, index) => ItemProfileWidget(
              icon: icons[index],
              label: labels[index],
              onTap: () {
                if (index == 6) {
                  setState(() {
                    final newLocale = context.locale.languageCode == "en"
                        ? Locale('ar')
                        : Locale('en');
                    context.setLocale(newLocale);
                  });
                }
                if (index == 7) {
                  AppRouter.navigateAndRemoveAll(const LoginView());
                } else if (index < label.length) {
                  AppRouter.navigateTo(label[index]);
                }
              })),
    );
  }
}
