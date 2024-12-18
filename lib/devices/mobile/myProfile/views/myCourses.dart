import 'package:flutter/material.dart';
import 'package:mansa/core/res/responsive.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
import 'package:mansa/views/widgets/item_courses_widget.dart';
class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Responsive.isWeb(context)?Expanded(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(3, (index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const ItemCoursesWidget(
                height: 250,
                width: 200,

                labels: "first Chapter",
                      type: ourStudent,
              ),
            ))),
      ):

    Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarHelper(text: "courses"),
      body: SingleChildScrollView(
        child:
        Column(children: List.generate(3, (index) =>
          const ItemCoursesWidget(labels: "first Chapter",
              type: ourStudent,
        )
          ,)
        
        ),
      ),
    );
  }
}
