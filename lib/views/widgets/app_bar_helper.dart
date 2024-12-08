import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constans.dart';
import '../../devices/mobile/auth/widgets/logo_name_app.dart';
class AppBarHelper extends StatelessWidget implements PreferredSizeWidget{
  const AppBarHelper({super.key,required this.text,this.actions});
  final String text;
  final List<Widget> ?actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions:actions,
      // actions,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      leading:const BackButton(color: kColor,),
      title: Text(text,style: kTextStyle24,).tr(),);
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
