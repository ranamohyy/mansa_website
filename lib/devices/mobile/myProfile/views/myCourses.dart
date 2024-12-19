import 'package:flutter/material.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
import 'package:mansa/views/widgets/item_courses_widget.dart';

import '../../../../core/utils/constans.dart';

class MobileMyCourses extends StatelessWidget {
  const MobileMyCourses({super.key, required this.type});
  final String type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        backgroundColor:scaffoldBackGroundColor,
        appBar: const AppBarHelper(text: "courses"),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: List.generate(7, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ItemCoursesWidget(
                    width: 500,
                    labels: "first Chapter",
                    type: type,
                  ),
                );
              }),
            ),
          ),
        ));
  }
}
