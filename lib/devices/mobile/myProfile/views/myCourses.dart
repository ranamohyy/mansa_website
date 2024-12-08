import 'package:flutter/material.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
import 'package:mansa/views/widgets/item_courses_widget.dart';
class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarHelper(text: "courses"),
      body: SingleChildScrollView(
        child: Column(children: List.generate(3, (index) =>
          const ItemCoursesWidget(labels: "first Chapter",
              type: ourStudent,
        )
          ,)
        
        ),
      ),
    );
  }
}
