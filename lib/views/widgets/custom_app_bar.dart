import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constans.dart';
import '../../devices/mobile/auth/widgets/logo_name_app.dart';
class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key,required this.text,});
final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      leading:
      const LogoOfAppWidget() ,
      title: Text(text,style: kTextStyle24,).tr(),);
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
