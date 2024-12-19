import 'package:flutter/material.dart';
import '../../core/res/responsive.dart';
import '../../devices/mobile/auth/widgets/logo_name_app.dart';
class CustomLogoForDevices extends StatelessWidget {
  const CustomLogoForDevices({super.key, this.aspectRatio});
  final double?aspectRatio;

  @override
  Widget build(BuildContext context) {
    if (Responsive.isWeb(context) || Responsive.isTab(context)) {
      return AspectRatio(
          aspectRatio: aspectRatio!,
          child: const LogoOfAppWidget());
    }else{
      return const LogoOfAppWidget();
    }
  }
}
