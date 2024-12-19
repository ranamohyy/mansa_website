import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../core/utils/constans.dart';
class ItemProfileWidget extends StatelessWidget {
  ItemProfileWidget({super.key,required this.label,required this.onTap,required this.icon,this.color});
  final String label;
  void Function()? onTap;
  Color ?color;
  Widget icon;
  @override
  Widget build(BuildContext context) {
    return   ListTile(
      tileColor:color,
      hoverColor: Colors.grey[300] ,
      title: Text(label,style: kTextStyle15bold,).tr(),
      onTap:onTap,
      leading: icon,
    );
  }
}

