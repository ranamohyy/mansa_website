import 'package:flutter/material.dart';
import 'package:mansa/core/utils/constans.dart';
import '../../../core/res/responsive.dart';
import '../../home/CustomHomeForAllDevices.dart';
import '../../widgets/app_bar_helper.dart';
class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    //لما اخد العدد من api هستخدم دا
    //CustomScrollView(slivers: [
    //           CustomItemCoursesForHomeAndCourses(
    //             interScreen: "myCourses",
    //             index: 3,
    //             itemsCount: 2,
    //             type: type,)])
      return
          Scaffold(
              backgroundColor:scaffoldBackGroundColor,
          appBar: Responsive.isTab(context)||Responsive.isMob(context)?
          const AppBarHelper(text: "courses"):null,
          body:
         const CustomHomeForAllDevices(type: ourStudent,)
      );
     }
}
