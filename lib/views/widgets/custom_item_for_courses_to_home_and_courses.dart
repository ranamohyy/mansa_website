import 'package:flutter/material.dart';
import '../../core/utils/utils.dart';
import '../../models/courses_model.dart';
import 'item_courses_widget.dart';

class CustomItemCoursesForHomeAndCourses extends StatelessWidget {
  const CustomItemCoursesForHomeAndCourses(
      {super.key, required this.onTap, required this.type});
  final void Function()? onTap;
  final String type;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 15,
            childAspectRatio: Utils.sizeOfItemCourseForHomeAndCourses(context),
            crossAxisSpacing: 15,
          ),
          delegate: SliverChildBuilderDelegate(
            childCount: HomeModel.labelOfCourses.length,
            (context, i) {
              return GestureDetector(
                onTap: onTap,
                child: ItemCoursesWidget(
                  labels: HomeModel.labelOfCourses[i],
                  type: type,
                ),
              );
            },
          ),
        ));
  }
}
