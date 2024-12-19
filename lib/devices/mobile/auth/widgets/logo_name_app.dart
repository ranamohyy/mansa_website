import 'package:flutter/material.dart';
import 'package:mansa/core/assets.dart';
class LogoOfAppWidget extends StatelessWidget {
  const LogoOfAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
      return Center(
          child: AspectRatio(
              aspectRatio: 0.4 / 0.2,
              child:
              Image.asset(
                  fit: BoxFit.fill,
                  AppImage.logo))
      );
    }
  }

