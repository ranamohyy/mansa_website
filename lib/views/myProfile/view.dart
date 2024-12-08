import 'package:flutter/material.dart';

import '../../core/res/responsive.dart';
import '../../devices/chrome/myProfile.dart';
import '../../devices/mobile/myProfile/view.dart';
import '../../devices/tablet/myProfile.dart';
class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Responsive(
        web:(context) =>WebMyProfile()  ,
        tab: (context) => TabletMyProfile(),
        mob: (context) =>MobileMyProfile() ,
      ),
    );
  }
}
