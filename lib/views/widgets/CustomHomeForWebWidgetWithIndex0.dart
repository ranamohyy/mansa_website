import 'package:flutter/material.dart';
import '../../core/utils/utils.dart';
import 'custom_item_for_courses_to_home_and_courses.dart';

class CustomHomeForWebWidgetWithIndex0 extends StatelessWidget {
  const CustomHomeForWebWidgetWithIndex0({super.key,  this.type});
  final String? type;
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
          type: type!,
            onTap: () => Utils.routeInHomeWithAllTypes(type!)
        )
      ],
    );
  }
}
