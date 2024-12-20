import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mansa/core/res/responsive.dart';
import '../../core/utils/constans.dart';
import '../widgets2/logo_name_app.dart';
class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key,this.onTap,this.W,
     required this.text,});
final String text;
final void Function()?onTap;
final Widget ? W;
  @override
  Widget build(BuildContext context) {
      return AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading:Responsive.isMob(context)?
        const LogoOfAppWidget() :W
        ,
        title: Text(text,style: kTextStyle24,).tr(),);

  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
