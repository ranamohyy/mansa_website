import 'package:flutter/material.dart';

import '../../core/res/responsive.dart';
import '../../core/utils/constans.dart';
import '../../devices/mobile/myProfile/views/myCourses.dart';
import '../widgets/CustomHomeForWebWidgetWithIndex0.dart';
import '../widgets/app_bar_helper.dart';
class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMob(context)){return  const  MobileMyCourses(
      type: ourStudent,
    );}
    else {
      return Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: Responsive.isTab(context)?const AppBarHelper(text: "courses"):null,
          body:
          const CustomHomeForWebWidgetWithIndex0(type: ourStudent,)
      );
    }  }
}
