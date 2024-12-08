import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constans.dart';
class ItemProfileWidget extends StatelessWidget {
  ItemProfileWidget({super.key,required this.label,required this.onTap,required this.icon});
  final String label;
  void Function()? onTap;
  Widget icon;
  @override
  Widget build(BuildContext context) {
    return   ListTile(
      title: Text(label,style: kTextStyle15bold,).tr(),
      onTap:onTap,
      leading: icon,
    );
  }
}

