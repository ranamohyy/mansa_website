import 'package:flutter/material.dart';
import '../../models/courses_model.dart';
import '../widgets/custom_item_for_courses_to_home_and_courses.dart';

class CustomHomeForAllDevices extends StatelessWidget {
 const CustomHomeForAllDevices({super.key,
    required this.type});
  final String type;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // SliverToBoxAdapter(
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: HeaderWidget(
        //       radius: 12,
        //       height: MediaQuery.of(context).size.height / 2,
        //       width: MediaQuery.of(context).size.width,
        //     ),
        //   ),
        // ),
        CustomItemCoursesForHomeAndCourses(
          interScreen: "",
          index: 0,
       itemsCount:HomeModel.labelOfCourses.length ,
          type: type,

        )
      ],
    );

  }
}
