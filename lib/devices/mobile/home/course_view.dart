import 'package:flutter/material.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/devices/mobile/home/course_details.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
import 'package:mansa/views/widgets/custom_item_for_courses_to_home_and_courses.dart';
import '../../../models/lessons_model.dart';

class CourseView extends StatelessWidget {
 const CourseView({super.key,
   required this.title,});
final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackGroundColor,
        appBar: AppBarHelper(
            text:title
        ),
        body:CustomScrollView(slivers: [
        CustomItemCoursesForHomeAndCourses(
          interScreen: "courses",
    itemsCount:LessonsModel.labels.length ,
    type: ourStudent,
    index: 1,

    )

   ]) );
        // SingleChildScrollView(
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Column(
        //       children: List.generate(
        //           captions.length,
        //           (i) => GestureDetector(
        //               onTap: () {
        //                         },
        //               child: Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: ItemCoursesWidget(
        //                  widget: "me",
        //                     type: ourStudent,
        //                     labels: labels[i]),
        //               ))),
        //     ),
        //   ),
        // ));
  }
}
